import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/my_study_repository.dart';

part 'session_overview_event.dart';
part 'session_overview_state.dart';
part 'session_overview_bloc.freezed.dart';

class SessionOverviewBloc
    extends Bloc<SessionOverviewEvent, SessionOverviewState> {
  SessionOverviewBloc(MyStudyRepository myStudyRepository)
      : _myStudyRepository = myStudyRepository,
        super(const SessionOverviewState.initial()) {
    on<SessionOverviewFetched>((event, emit) async {
      emit(const SessionOverviewState.loading());
      try {
        final data = await _myStudyRepository.getOverviewDetails(
          subjectId: event.subjectId,
          sessionId: event.sessionId,
          moduleId: event.moduleId,
        );
        emit(SessionOverviewState.success(data));
      } on NetworkException catch (e) {
        emit(SessionOverviewState.failure(e.message));
      } catch (e) {
        emit(SessionOverviewState.failure('Terjadi kesalahan: $e.'));
      }
    });
  }

  final MyStudyRepository _myStudyRepository;
}
