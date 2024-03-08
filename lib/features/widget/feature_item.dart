import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

enum KgFeature {
  administration,
  bootcamp,
  studyPlan,
  myStudy,
  assignment,
  gradesAndCertificates,
  creditConversion,
}

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    required this.icon, required this.label, required this.boxColor, super.key,
    this.onTap,
  });

  const FeatureItem.administration({super.key, this.onTap})
      : icon = const PhosphorIcon(PhosphorIconsDuotone.books),
        label = 'Adminis\ntrasi',
        boxColor = const Color(0xFF58C0D0);

  const FeatureItem.bootcamp({super.key, this.onTap})
      : icon = const PhosphorIcon(PhosphorIconsDuotone.rocket),
        label = 'Bootcamp',
        boxColor = const Color(0xFFED3768);

  const FeatureItem.myStudy({super.key, this.onTap})
      : icon = const PhosphorIcon(PhosphorIconsDuotone.graduationCap),
        label = 'Studi-Ku',
        boxColor = const Color(0xFF0C5DAC);

  const FeatureItem.studyPlan({super.key, this.onTap})
      : icon = const PhosphorIcon(PhosphorIconsDuotone.graduationCap),
        label = 'Rencana Studi',
        boxColor = const Color(0xFFFAB317);

  const FeatureItem.assignment({super.key, this.onTap})
      : icon = const PhosphorIcon(PhosphorIconsDuotone.clipboardText),
        label = 'Penugasan',
        boxColor = const Color(0xFF39B54A);

  const FeatureItem.gradesAndCertificates({super.key, this.onTap})
      : icon = const PhosphorIcon(PhosphorIconsDuotone.certificate),
        label = 'Nilai & Sertifikat',
        boxColor = const Color(0xFF2995B2);

  const FeatureItem.creditConversion({super.key, this.onTap})
      : icon = const PhosphorIcon(PhosphorIconsDuotone.arrowsLeftRight),
        label = 'Konversi SKS',
        boxColor = const Color(0xFF299B43);

  const FeatureItem.moreFeatures({super.key, this.onTap})
      : icon = const PhosphorIcon(PhosphorIconsDuotone.diamondsFour),
        label = 'Lainnya',
        boxColor = Colors.grey;

  final Widget icon;
  final String label;
  final Color boxColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    const iconSize = 24.0;
    const iconColor = Colors.white;

    final iconWidget = FittedBox(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: IconTheme(
          data: const IconThemeData(color: iconColor, size: iconSize),
          child: icon,
        ),
      ),
    );
    final labelWidget = Center(
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        maxLines: 2,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
    );

    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Expanded(flex: 4, child: iconWidget),
          Expanded(flex: 3, child: labelWidget),
        ],
      ),
    );
  }
}
