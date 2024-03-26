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

  Future<Module> getModuleDetails({
    required String subjectId,
    required String sessionId,
    required String moduleId,
  }) async {
    final result = await _kgClient.getModuleDetails(
      subjectId: subjectId,
      sessionId: sessionId,
      moduleId: moduleId,
    );
    final articles = (result.module?.articles ?? [])
        .map(
          (article) => Content(
            id: article.id ?? '',
            title: article.title ?? '',
            content: article.content ?? '',
            url: article.url ?? '',
            moduleId: article.moduleId ?? '',
            durationInSeconds: article.durationInSeconds ?? 0,
          ),
        )
        .toList();
    final journals = (result.module?.journals ?? [])
        .map(
          (journal) => Content(
            id: journal.id ?? '',
            title: journal.title ?? '',
            content: journal.content ?? '',
            url: journal.url ?? '',
            moduleId: journal.moduleId ?? '',
            durationInSeconds: journal.durationInSeconds ?? 0,
          ),
        )
        .toList();
    final videos = (result.module?.videos ?? [])
        .map(
          (video) => Content(
            id: video.id ?? '',
            title: video.title ?? '',
            content: video.content ?? '',
            url: video.url ?? '',
            moduleId: video.moduleId ?? '',
            durationInSeconds: video.durationInSeconds ?? 0,
          ),
        )
        .toList();
    final documents = (result.module?.documents ?? [])
        .map(
          (document) => Document(
            id: document.id ?? '',
            documentFile: document.documentFile ?? '',
            moduleId: document.moduleId ?? '',
            title: document.title ?? '',
            durationInSeconds: document.durationInSeconds ?? 0,
          ),
        )
        .toList();

    return Module(
      subjectId: subjectId,
      subjectName: result.detail?.subjectName ?? '',
      sessionId: sessionId,
      sessionNo: result.detail?.sessionNo ?? 0,
      sessionType: result.detail?.sessionType ?? SessionType.regular,
      id: result.module?.id ?? '',
      title: result.module?.title ?? '',
      description: result.module?.description ?? '',
      isAllVideoSeen: result.module?.isAllVideoSeen ?? false,
      videos: videos,
      documents: documents,
      journals: journals,
      articles: articles,
      status: result.module?.status ?? ProgressStatus.pending,
    );
  }

  Future<OverviewDetails> getOverviewDetails({
    required String subjectId,
    required String sessionId,
    required String moduleId,
  }) async {
    final result = await _kgClient.getModuleDetails(
      subjectId: subjectId,
      sessionId: sessionId,
      moduleId: moduleId,
    );
    final videos = (result.module?.videos ?? [])
        .map(
          (video) => Content(
            id: video.id ?? '',
            title: video.title ?? '',
            content: video.content ?? '',
            url: video.url ?? '',
            moduleId: video.moduleId ?? '',
            durationInSeconds: video.durationInSeconds ?? 0,
          ),
        )
        .toList();
    final documents = (result.module?.documents ?? [])
        .map(
          (document) => Document(
            id: document.id ?? '',
            documentFile: document.documentFile ?? '',
            moduleId: document.moduleId ?? '',
            title: document.title ?? '',
            durationInSeconds: document.durationInSeconds ?? 0,
          ),
        )
        .toList();

    return OverviewDetails(
      subjectId: subjectId,
      subjectName: result.detail?.subjectName ?? '',
      sessionId: sessionId,
      sessionNo: result.detail?.sessionNo ?? 0,
      sessionType: result.detail?.sessionType ?? SessionType.regular,
      id: result.module?.id ?? '',
      title: result.module?.title ?? '',
      description: result.module?.description ?? '',
      isAllVideoSeen: result.module?.isAllVideoSeen ?? false,
      video: videos.isNotEmpty ? videos.first : const Content.empty(),
      documents: documents,
      status: result.module?.status ?? ProgressStatus.pending,
    );
  }
}
