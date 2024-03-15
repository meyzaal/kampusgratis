import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/src/models/models.dart';

/// {@template my_study_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class MyStudyRepository {
  /// {@macro my_study_repository}
  MyStudyRepository({KgClient? kgClient}) : _kgClient = kgClient ?? KgClient();

  final KgClient _kgClient;

  Future<List<MyStudy>> getStudies() async {
    final results = await _kgClient.getMyStudy();
    return results
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
}
