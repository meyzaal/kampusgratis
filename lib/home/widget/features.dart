import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/features/features.dart';
import 'package:kampusgratis/home/home.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:user_repository/user_repository.dart';

class HomeFeatures extends StatelessWidget {
  const HomeFeatures({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    final isStudent = user?.role.isStudent ?? false;
    final gridChildren = isStudent
        ? [
            FeatureItem.bootcamp(
              onTap: () {},
            ),
            const FeatureItem.myStudy(),
            const FeatureItem.creditConversion(),
          ]
        : [
            FeatureItem.bootcamp(
              onTap: () {},
            ),
            FeatureItem.administration(
              onTap: () => const AdministrationRoute()
                  .push<bool>(context)
                  .then((updated) {
                if (updated != true) return;
                context.read<HomeBloc>().add(const HomeEvent.fetched());
              }),
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
                    const AdministrationRoute()
                        .push<bool>(context)
                        .then((updated) {
                      if (updated != true) return;
                      context.read<HomeBloc>().add(const HomeEvent.fetched());
                    });
                  case KgFeature.bootcamp:
                  // TODO(meyzaal): Handle this case.
                  case KgFeature.studyPlan:
                  // TODO(meyzaal): Handle this case.
                  case KgFeature.myStudy:
                  // TODO(meyzaal): Handle this case.
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
}
