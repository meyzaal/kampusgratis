import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/my_study_repository.dart';

part 'my_study_event.dart';
part 'my_study_state.dart';
part 'my_study_bloc.freezed.dart';

class MyStudyBloc extends Bloc<MyStudyEvent, MyStudyState> {
  MyStudyBloc(MyStudyRepository myStudyRepository)
      : _myStudyRepository = myStudyRepository,
        super(const MyStudyState.initial()) {
    on<MyStudyFetched>((event, emit) async {
      emit(const MyStudyState.loading());
      try {
        final result = await _myStudyRepository.getStudies();
        result.forEach(print);
        emit(
          MyStudyState.success(
            ongoing: result.ongoing,
            completed: result.completed,
          ),
        );
      } on NetworkException catch (e) {
        emit(MyStudyState.failure(e.message));
      } catch (e) {
        emit(MyStudyState.failure('Terjadi kesalahan: $e.'));
      }
    });
  }

  final MyStudyRepository _myStudyRepository;
}

extension MyStudyStateX on MyStudyState {
  bool get isInitial => this is MyStudyInitialState;
  bool get isLoading => this is MyStudyLoadingState;
  bool get isFailure => this is MyStudyFailureState;
  bool get isSuccess => this is MyStudySuccessState;
}

extension on List<MyStudy> {
  List<MyStudy> get ongoing =>
      where((study) => study.progressPercentage < 1.0).toList();
  List<MyStudy> get completed =>
      where((study) => study.progressPercentage == 1.0).toList();
}
