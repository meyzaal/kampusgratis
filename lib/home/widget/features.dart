import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/features/features.dart';
import 'package:kampusgratis/home/home.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:user_repository/user_repository.dart';

class HomeFeatures extends StatelessWidget with NavigationMiddleware {
  const HomeFeatures({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    final isStudent = user?.role.isStudent ?? false;
    final gridChildren = isStudent
        ? [
            FeatureItem.bootcamp(
              onTap: () => _toBootcamp(context),
            ),
            FeatureItem.myStudy(
              onTap: () => _toMyStudy(context),
            ),
            const FeatureItem.creditConversion(),
          ]
        : [
            FeatureItem.bootcamp(
              onTap: () => _toBootcamp(context),
            ),
            FeatureItem.administration(
              onTap: () => _toAdministration(context),
            ),
            const FeatureItem.creditConversion(),
          ];
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      sliver: SliverGrid.count(
        crossAxisCount: 4,
        children: gridChildren
          ..add(
            FeatureItem.moreFeatures(
              onTap: () =>
                  const FeatureRoute().push<KgFeature>(context).then((value) {
                if (value == null) return;
                switch (value) {
                  case KgFeature.administration:
                    _toAdministration(context);
                  case KgFeature.bootcamp:
                    _toBootcamp(context);
                  case KgFeature.studyPlan:
                  // TODO(meyzaal): Handle this case.
                  case KgFeature.myStudy:
                    _toMyStudy(context);
                  case KgFeature.assignment:
                  // TODO(meyzaal): Handle this case.
                  case KgFeature.gradesAndCertificates:
                  // TODO(meyzaal): Handle this case.
                  case KgFeature.creditConversion:
                  // TODO(meyzaal): Handle this case.
                }
              }),
            ),
          ),
      ),
    );
  }

  void _refresh(BuildContext context) =>
      context.read<HomeBloc>().add(const HomeEvent.fetched(forceRefresh: true));

  void _toAdministration(BuildContext context) =>
      const AdministrationRoute().push<bool>(context).then((updated) {
        if (updated != true) return;
        _refresh(context);
      });

  void _toBootcamp(BuildContext context) => const BootcampRoute().push;

  void _toMyStudy(BuildContext context) => checkRole(
        context,
        onNavigate: const MyStudyRoute().go,
        onAdministrationAccepted: _refresh,
      );
}
