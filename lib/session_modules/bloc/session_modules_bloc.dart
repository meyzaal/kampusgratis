import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/my_study_repository.dart';

part 'session_modules_event.dart';
part 'session_modules_state.dart';
part 'session_modules_bloc.freezed.dart';

class SessionModulesBloc
    extends Bloc<SessionModulesEvent, SessionModulesState> {
  SessionModulesBloc(MyStudyRepository myStudyRepository)
      : _myStudyRepository = myStudyRepository,
        super(const SessionModulesState.initial()) {
    on<SessionModulesFetched>((event, emit) async {
      emit(const SessionModulesState.loading());
      try {
        final data = await _myStudyRepository.getSessionModules(
          subjectId: event.subjectId,
          sessionId: event.sessionId,
        );
        emit(SessionModulesState.success(data));
      } on NetworkException catch (e) {
        emit(SessionModulesState.failure(e.message));
      } catch (e) {
        emit(SessionModulesState.failure('Terjadi kesalahan: $e.'));
      }
    });
  }

  final MyStudyRepository _myStudyRepository;
}
