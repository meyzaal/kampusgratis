import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/src/models/models.dart';

/// {@template my_study_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class MyStudyRepository {
  /// {@macro my_study_repository}
  MyStudyRepository({KgClient? kgClient}) : _kgClient = kgClient ?? KgClient();

  final KgClient _kgClient;

  List<MyStudy>? get studies => _studies;
  List<MyStudy>? _studies;

  Future<List<MyStudy>> getStudies() async {
    final results = await _kgClient.getMyStudy();
    return _studies = results
        .map(
          (result) => MyStudy(
            id: result.id ?? '',
            subjectCode: result.subjectCode ?? '-',
            name: result.name ?? '-',
            slug: result.slug ?? '',
            thumbnail: result.thumbnail,
            teacherName: result.teacherName,
            credit: result.credit ?? 0,
            subjectSemester: result.subjectSemester ?? 0,
            currentSession: result.currentSession ?? 0,
            studentCount: result.studentCount ?? 0,
            sessionCount: result.sessionCount ?? 0,
            progressPercentage: (result.progressPercentage ?? 0) / 100,
          ),
        )
        .toList();
  }

  Future<SubjectSession> getSessions(String subjectId) async {
    final result = await _kgClient.getSessions(subjectId);

    final subject = Subject(
      id: result.subject?.id ?? '',
      name: result.subject?.name ?? '',
      description: result.subject?.description ?? '',
      thumbnail: result.subject?.thumbnail,
    );
    final overview = Overview(
      subjectId: result.overview?.subjectId ?? '',
      durationSeconds: result.overview?.durationSeconds ?? 0,
      durationMinutes: result.overview?.durationMinutes ?? 0,
      link: result.overview?.link,
      moduleId: result.overview?.moduleId,
      sessionId: result.overview?.sessionId,
    );
    final sessions = (result.sessions ?? [])
        .map(
          (session) => Session(
            id: session.id ?? '',
            title: session.title ?? '',
            sessionNo: session.sessionNo ?? 0,
            sessionType: session.sessionType ?? SessionType.regular,
            isLocked: session.isLocked ?? true,
            progress: (session.progress ?? [])
                .map(
                  (progress) => Progress(
                    status: progress.status ?? ProgressStatus.locked,
                    type: progress.type ?? ProgressType.module,
                    updatedAt: progress.updatedAt ?? '',
                  ),
                )
                .toList(),
          ),
        )
        .toList();
    return SubjectSession(
      subject: subject,
      overview: overview,
      sessions: sessions,
    );
  }
}
