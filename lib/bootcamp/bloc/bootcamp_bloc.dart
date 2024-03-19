import 'package:bloc/bloc.dart';
import 'package:bootcamp_repository/bootcamp_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';

part 'bootcamp_event.dart';
part 'bootcamp_state.dart';
part 'bootcamp_data.dart';
part 'bootcamp_bloc.freezed.dart';

enum BootcampStatus { initial, loading, failure, success }

class BootcampBloc extends Bloc<BootcampEvent, BootcampState> {
  BootcampBloc(BootcampRepository bootcampRepository, {this.onBootcampEnrolled})
      : _bootcampRepository = bootcampRepository,
        super(
          const BootcampState(
            datas: [],
            status: BootcampStatus.initial,
            hasReachMax: false,
            dialogShown: false,
          ),
        ) {
    on<BootcampEventFetched>(_onBootcampEventFetched);
    on<BootcampEventEnrolled>(_onBootcampEventEnrolled);
    on<BootcampEventDialogShown>(_onBootcampEventDialogShown);
  }

  final BootcampRepository _bootcampRepository;
  final VoidCallback? onBootcampEnrolled;

  Future<void> _onBootcampEventFetched(
    BootcampEventFetched event,
    Emitter<BootcampState> emit,
  ) async {
    final isLoadMore = event.isLoadMore;
    var page = 1;
    if (isLoadMore) {
      if (state.hasReachMax) return;
      page = state.meta?.currentPage ?? page + 1;
    } else {
      emit(state.copyWith(status: BootcampStatus.loading));
    }
    try {
      final result =
          await _bootcampRepository.getBootcamps(page: page, limit: 10);
      final datas = isLoadMore
          ? state.datas + result.data.toBootcampDatas
          : result.data.toBootcampDatas;
      emit(
        state.copyWith(
          datas: datas,
          status: BootcampStatus.success,
          hasReachMax: datas.length == result.meta.totalData,
        ),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          status: BootcampStatus.failure,
          message: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: BootcampStatus.failure,
          message: 'Terjadi kesalahan: $e.',
        ),
      );
    }
  }

  Future<void> _onBootcampEventEnrolled(
    BootcampEventEnrolled event,
    Emitter<BootcampState> emit,
  ) async {
    final datas = List<BootcampData>.from(state.datas);
    onBootcampEnrolled?.call();
    emit(
      state.copyWith(
        datas: datas.update(
          data: datas.bootcampById(event.bootcampId),
          status: BootcampStatus.loading,
        ),
      ),
    );
    try {
      final result = await _bootcampRepository.enrollBootcamp(event.bootcampId);
      emit(
        state.copyWith(
          datas: datas.update(
            data: result,
            status: BootcampStatus.success,
          ),
        ),
      );
    } on EnrollBootcampFailure catch (e) {
      emit(
        state.copyWith(
          datas: datas.update(
            data: datas.bootcampById(event.bootcampId),
            status: BootcampStatus.failure,
            message: e.message,
          ),
        ),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          datas: datas.update(
            data: datas.bootcampById(event.bootcampId),
            status: BootcampStatus.failure,
            message: e.message,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          datas: datas.update(
            data: datas.bootcampById(event.bootcampId),
            status: BootcampStatus.failure,
            message: 'Terjadi kesalahan: $e.',
          ),
        ),
      );
    }
  }

  void _onBootcampEventDialogShown(
    BootcampEventDialogShown event,
    Emitter<BootcampState> emit,
  ) {
    final dialogShown = state.dialogShown;
    if (dialogShown) return;
    emit(state.copyWith(dialogShown: !dialogShown));
  }
}

extension BootcampStatusX on BootcampStatus {
  bool get isInitial => this == BootcampStatus.initial;
  bool get isLoading => this == BootcampStatus.loading;
  bool get isFailure => this == BootcampStatus.failure;
  bool get isSuccess => this == BootcampStatus.success;
}

extension on List<BootcampData> {
  int indexById(String bootcampId) =>
      indexWhere((bootcamp) => bootcamp.data.id == bootcampId);
  BootcampData byId(String bootcampId) => this[indexById(bootcampId)];
  Bootcamp bootcampById(String bootcampId) => this[indexById(bootcampId)].data;
  List<BootcampData> update({
    required Bootcamp data,
    required BootcampStatus status,
    String? message,
  }) {
    final datas = List<BootcampData>.from(this);
    datas[indexById(data.id)] = byId(data.id).copyWith(
      status: status,
      data: data,
      message: message,
    );
    return datas;
  }
}

extension on List<Bootcamp> {
  List<BootcampData> get toBootcampDatas => map(
        (data) => BootcampData(data: data, status: BootcampStatus.initial),
      ).toList();
}
