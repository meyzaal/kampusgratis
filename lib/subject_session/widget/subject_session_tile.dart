import 'package:flutter/material.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/subject_session/subject_session.dart';
import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/my_study_repository.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SubjectSessionTile extends StatelessWidget {
  const SubjectSessionTile({
    required this.isLocked,
    required this.number,
    required this.title,
    required this.progresses,
    super.key,
  });

  final bool isLocked;
  final int number;
  final String title;
  final List<Progress> progresses;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 24 / 16,
      color: isLocked ? theme.disabledColor : theme.colorScheme.onSurface,
    );
    return IgnorePointer(
      ignoring: isLocked,
      child: ExpansionTile(
        leading: Text('$number.', style: style),
        title: Text(title, style: style),
        trailing: isLocked
            ? PhosphorIcon(
                PhosphorIconsFill.lock,
                color: theme.disabledColor,
              )
            : null,
        children: progresses
            .map(
              (progress) => SubjectSessionContent(
                leading: progress.type.icon,
                title: Text(progress.type.nameInIdn),
                trailing: progress.status.iconData != null
                    ? PhosphorIcon(
                        progress.status.iconData!,
                        color: progress.status.iconColor(context),
                      )
                    : null,
                onTap: progress.status.isLocked ? null : () {},
              ),
            )
            .toList(),
      ),
    );
  }
}

extension on ProgressType {
  String get nameInIdn => switch (this) {
        ProgressType.assessment => 'Penilaian pengajar',
        ProgressType.assignment => 'Tugas',
        ProgressType.module => 'Modul',
        ProgressType.quiz => 'Kuis',
        ProgressType.reflection => 'Refleksi eksplorasi',
      };
  Widget get icon {
    switch (this) {
      case ProgressType.assessment:
        return const PhosphorIcon(
          PhosphorIconsFill.sidebar,
          color: Color(0xFF74961D),
        );
      case ProgressType.assignment:
        return const PhosphorIcon(
          PhosphorIconsFill.scroll,
          color: Color(0xFF0CA678),
        );
      case ProgressType.module:
        return const PhosphorIcon(
          PhosphorIconsFill.notebook,
          color: Color(0xFF3498DB),
        );
      case ProgressType.quiz:
        return const PhosphorIcon(
          PhosphorIconsFill.exam,
          color: Color(0xFFF5876C),
        );
      case ProgressType.reflection:
        return const PhosphorIcon(
          PhosphorIconsFill.shapes,
          color: Color(0xFFDB342C),
        );
    }
  }
}

extension on ProgressStatus {
  bool get isLocked => this == ProgressStatus.locked;
  IconData? get iconData {
    if (this case ProgressStatus.locked) {
      return PhosphorIconsFill.lock;
    } else if (this case ProgressStatus.ongoing) {
      return PhosphorIconsFill.clock;
    } else if (this case ProgressStatus.finished) {
      return PhosphorIconsFill.checkCircle;
    } else if (this case ProgressStatus.failed) {
      return PhosphorIconsFill.warningCircle;
    } else {
      return null;
    }
  }

  Color? iconColor(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<CustomColors>();
    if (this case ProgressStatus.ongoing) {
      return colors?.info;
    } else if (this case ProgressStatus.finished) {
      return colors?.success;
    } else if (this case ProgressStatus.failed) {
      return colors?.danger;
    } else if (this case ProgressStatus.locked) {
      return theme.disabledColor;
    } else {
      return null;
    }
  }
}
