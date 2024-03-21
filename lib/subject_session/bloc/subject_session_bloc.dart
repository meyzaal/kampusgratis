import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/my_study_repository.dart';

part 'subject_session_event.dart';
part 'subject_session_state.dart';
part 'subject_session_bloc.freezed.dart';

class SubjectSessionBloc
    extends Bloc<SubjectSessionEvent, SubjectSessionState> {
  SubjectSessionBloc(MyStudyRepository myStudyRepository)
      : _myStudyRepository = myStudyRepository,
        super(
          const SubjectSessionState(
            status: SubjectSessionStatus.initial,
            updated: false,
          ),
        ) {
    on<SubjectSessionFetched>((event, emit) async {
      emit(state.copyWith(status: SubjectSessionStatus.loading));
      try {
        final result = await _myStudyRepository.getSessions(event.subjectId);
        emit(
          state.copyWith(
            status: SubjectSessionStatus.success,
            data: result,
            subjectId: result.subject.id,
            subjectName: result.subject.name,
          ),
        );
      } on NetworkException catch (e) {
        emit(
          state.copyWith(
            status: SubjectSessionStatus.failure,
            message: e.message,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            status: SubjectSessionStatus.failure,
            message: 'Terjadi kesalahan: $e.',
          ),
        );
      }
    });
  }

  final MyStudyRepository _myStudyRepository;
}
