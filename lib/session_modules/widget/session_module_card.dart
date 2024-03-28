import 'package:flutter/material.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SessionModuleCard extends StatelessWidget {
  const SessionModuleCard({
    required this.title,
    required this.isAllVideoSeen,
    required this.submitted,
    required this.totalVideos,
    required this.totalDocuments,
    required this.totalArticles,
    required this.totalJournals,
    super.key,
  });

  final String title;
  final bool isAllVideoSeen;
  final bool submitted;
  final int totalVideos;
  final int totalDocuments;
  final int totalArticles;
  final int totalJournals;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final subtitle = isAllVideoSeen
        ? 'Semua video sudah ditonton'
        : 'Belum semua video ditonton';

    return Card.outlined(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ListTile(
            //   leading: Assets.icons.bookClose.svg(
            //     placeholderBuilder: (context) =>
            //         Image.memory(kTransparentImage),
            //   ),

            // ),
            ListTile(
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 24 / 16,
                color: theme.colorScheme.onSurface,
              ),
              title: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitleTextStyle: TextStyle(
                fontSize: 12,
                height: 18 / 12,
                color: theme.colorScheme.outline,
              ),
              subtitle: Text(subtitle),
              trailing: submitted
                  ? const PhosphorIcon(PhosphorIconsFill.checkCircle)
                  : null,
              iconColor: theme.extension<CustomColors>()?.success,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 14,
                bottom: 12,
              ),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _Chip.video(totalVideos),
                  _Chip.document(totalDocuments),
                  _Chip.article(totalArticles),
                  _Chip.journal(totalJournals),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.label, required this.icon});

  _Chip.video(int totalVideos)
      : label = Text('$totalVideos Video'),
        icon = const PhosphorIcon(PhosphorIconsRegular.video);

  _Chip.document(int totalDocuments)
      : label = Text('$totalDocuments Dokumen'),
        icon = const PhosphorIcon(PhosphorIconsRegular.file);

  _Chip.article(int totalArticles)
      : label = Text('$totalArticles Artikel'),
        icon = const PhosphorIcon(PhosphorIconsRegular.article);

  _Chip.journal(int totalJournals)
      : label = Text('$totalJournals Jurnal'),
        icon = const PhosphorIcon(PhosphorIconsRegular.scroll);

  final Widget label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Chip(
      visualDensity: VisualDensity.compact,
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
