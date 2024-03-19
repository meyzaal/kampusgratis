import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/gen/gen.dart';
import 'package:my_study_repository/my_study_repository.dart';

class MyStudyCard extends StatelessWidget {
  const MyStudyCard({required this.data, super.key});

  final MyStudy data;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          SubjectSessionRoute(data.id, $extra: data.name).push<void>(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Header(
              imageUrl: data.thumbnail,
              subjectName: data.name,
              semester: data.subjectSemester,
            ),
            // _Details(
            //   semester: data.subjectSemester,
            //   credit: data.credit,
            //   teacherName: data.teacherName,
            // ),
            if (data.teacherName != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text('Pengampu: ${data.teacherName}'),
              ),
            _Progress(
              progress: data.progressPercentage,
              totalSession: data.sessionCount,
              currentSession: data.currentSession,
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.imageUrl,
    required this.subjectName,
    required this.semester,
  });

  final String? imageUrl;
  final String subjectName;
  final int semester;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final placeholder = Assets.images.logoKg.provider();
    final image =
        imageUrl != null ? CachedNetworkImageProvider(imageUrl!) : placeholder;

    return ListTile(
      leading: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      subtitle: Text('Semester $semester'),
      subtitleTextStyle: TextStyle(
        fontSize: 14,
        height: 21 / 14,
        fontWeight: FontWeight.w400,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      title: Text(subjectName),
      titleTextStyle: TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w600,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      isThreeLine: true,
      contentPadding: const EdgeInsets.only(left: 12, top: 4, right: 12),
    );
  }
}

// class _Details extends StatelessWidget {
//   const _Details({
//     required this.semester,
//     required this.credit,
//     required this.teacherName,
//   });

//   final int semester;
//   final int credit;
//   final String? teacherName;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       child: Wrap(
//         spacing: 4,
//         runSpacing: 4,
//         children: [
//           MyStudyChip.semester(semester: semester),
//           MyStudyChip.credit(credit: credit),
//           if (teacherName != null)
//             MyStudyChip.teacher(teacherName: teacherName!),
//         ],
//       ),
//     );
//   }
// }

class _Progress extends StatelessWidget {
  const _Progress({
    required this.progress,
    required this.totalSession,
    required this.currentSession,
  });

  final double progress;
  final int totalSession;
  final int currentSession;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final isCompleted = progress == 1;

    final titleWidget = Text(
      'Tingkat penyelesaian',
      style: TextStyle(
        fontSize: 12,
        height: 18 / 12,
        color: colors.outline,
      ),
    );
    final indicatorWidget = LinearProgressIndicator(
      valueColor: AlwaysStoppedAnimation(
        isCompleted
            ? theme.extension<CustomColors>()?.sourceSuccess
            : colors.primary,
      ),
      value: progress,
      backgroundColor: (isCompleted
              ? theme.extension<CustomColors>()?.sourceSuccess
              : colors.primary)
          ?.withOpacity(0.2),
      borderRadius: BorderRadius.circular(8),
      minHeight: 8,
    );
    final sessionWidget = Text(
      '$currentSession/$totalSession pertemuan',
      style: const TextStyle(
        fontSize: 12,
        height: 18 / 12,
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 8,
        right: 12,
        bottom: 12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          titleWidget,
          Row(
            children: [
              Expanded(child: indicatorWidget),
              const SizedBox(width: 8),
              sessionWidget,
            ],
          ),
        ],
      ),
    );
  }
}
