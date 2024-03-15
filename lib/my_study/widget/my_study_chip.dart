import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MyStudyChip extends StatelessWidget {
  const MyStudyChip({required this.icon, required this.label, super.key});

  MyStudyChip.credit({required int credit, super.key})
      : icon = const PhosphorIcon(PhosphorIconsFill.book),
        label = Text('$credit SKS');

  MyStudyChip.semester({required int semester, super.key})
      : icon = const PhosphorIcon(PhosphorIconsFill.path),
        label = Text('Semester $semester');

  MyStudyChip.teacher({required String teacherName, super.key})
      : icon = const PhosphorIcon(PhosphorIconsFill.chalkboardTeacher),
        label = Text(teacherName);

  final Widget icon;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsetsDirectional.only(end: 8),
      padding: EdgeInsets.zero,
      label: label,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      avatar: IconTheme(
        data: IconThemeData(
          size: 18,
          color: Theme.of(context).colorScheme.primary,
        ),
        child: icon,
      ),
      labelStyle: const TextStyle(
        fontSize: 12,
        height: 18 / 12,
      ),
    );
  }
}
