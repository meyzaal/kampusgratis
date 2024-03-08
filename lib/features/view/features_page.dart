import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/features/features.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semua Fitur'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.symmetric(vertical: 16),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 4,
        children:
            KgFeature.values.map((feature) => feature.widget(context)).toList(),
      ),
    );
  }
}

extension on KgFeature {
  FeatureItem widget(BuildContext context) {
    switch (this) {
      case KgFeature.administration:
        return FeatureItem.administration(onTap: () => context.pop(this));
      case KgFeature.bootcamp:
        return FeatureItem.bootcamp(onTap: () => context.pop(this));
      case KgFeature.studyPlan:
        return FeatureItem.studyPlan(onTap: () => context.pop(this));
      case KgFeature.myStudy:
        return FeatureItem.myStudy(onTap: () => context.pop(this));
      case KgFeature.assignment:
        return FeatureItem.assignment(onTap: () => context.pop(this));
      case KgFeature.gradesAndCertificates:
        return FeatureItem.gradesAndCertificates(
          onTap: () => context.pop(this),
        );
      case KgFeature.creditConversion:
        return FeatureItem.creditConversion(onTap: () => context.pop(this));
    }
  }
}
