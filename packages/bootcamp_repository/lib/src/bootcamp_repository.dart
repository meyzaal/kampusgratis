import 'package:bootcamp_repository/src/models/models.dart';
import 'package:kg_client/kg_client.dart';

class EnrollBootcampFailure implements Exception {
  const EnrollBootcampFailure([this.message = 'Terjadi kesalahan.']);

  factory EnrollBootcampFailure.fromMessage(String message) {
    switch (message) {
      case 'You already enroll this Subject':
        return const EnrollBootcampFailure(
          'Anda sudah terdaftar pada topik Bootcamp ini.',
        );
      case 'Subject cannot be taken yet':
        return const EnrollBootcampFailure('Bootcamp belum tersedia.');
      case 'You can only take 2 group subjects or bootcamp':
        return const EnrollBootcampFailure(
          'Anda hanya bisa mendaftar 2 topik Bootcamp saja.',
        );
      default:
        return EnrollBootcampFailure(message);
    }
  }

  final String message;
}

class BootcampRepository {
  BootcampRepository({KgClient? kgClient}) : _kgClient = kgClient ?? KgClient();

  final KgClient _kgClient;

  List<Bootcamp> _bootcamps = <Bootcamp>[];

  Future<Data> getBootcamps({required int page, required int limit}) async {
    final result = await _kgClient.getSubjects(
      page: page,
      limit: limit,
      type: SubjectType.group,
    );
    final meta = Meta(
      pageSize: result.meta?.pageSize ?? 0,
      totalData: result.meta?.totalData ?? 0,
      currentPage: result.meta?.currentPage ?? 0,
      maxPage: result.meta?.maxPage ?? 0,
    );
    _bootcamps = (result.data ?? [])
        .map(
          (bootcamp) => Bootcamp(
            id: bootcamp.id ?? '',
            name: bootcamp.name ?? '',
            description: bootcamp.description ?? '-',
            slug: bootcamp.slug ?? '',
            code: bootcamp.code ?? '-',
            credit: bootcamp.credit ?? 0,
            type: bootcamp.type ?? '',
            level: bootcamp.level ?? 0,
            semester: bootcamp.semester ?? 0,
            totalSession: bootcamp.totalSession ?? 0,
            isTaken: bootcamp.isTaken ?? false,
            isAvailable: bootcamp.isAvailable ?? false,
            majorId: bootcamp.majorId ?? '',
            majorName: bootcamp.majorName ?? '',
            brochure: bootcamp.brochure,
            startAt: bootcamp.startAt,
            thumbnail: bootcamp.thumbnail,
          ),
        )
        .toList();
    return Data(data: _bootcamps, meta: meta);
  }

  Future<Bootcamp> enrollBootcamp(String bootcampId) async {
    try {
      await _kgClient.enrollSubject(bootcampId);
      _bootcamps = _bootcamps.enrolled(bootcampId);
      return _bootcamps.byId(bootcampId);
    } on BadResponseException catch (e) {
      throw EnrollBootcampFailure.fromMessage(e.message);
    }
  }
}

extension on List<Bootcamp> {
  int indexById(String bootcampId) =>
      indexWhere((bootcamp) => bootcamp.id == bootcampId);
  Bootcamp byId(String bootcampId) => this[indexById(bootcampId)];
  List<Bootcamp> enrolled(String bootcampId) {
    this[indexById(bootcampId)] = byId(bootcampId).copyWith(isTaken: true);
    return this;
  }
}
