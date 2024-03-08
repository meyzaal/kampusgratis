import 'package:banner_repository/src/models/models.dart';
import 'package:kg_client/kg_client.dart';

class BannerRepository {
  BannerRepository({KgClient? kgClient}) : _kgClient = kgClient ?? KgClient();

  final KgClient _kgClient;

  Future<List<Banner>> getBanner() async {
    final result = await _kgClient.getBanner();

    return result
        .map((banner) => Banner(id: banner.id ?? '', url: banner.url))
        .toList();
  }
}
