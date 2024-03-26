import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kampusgratis/shared/extensions/duration.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SubjectSessionOverview extends StatelessWidget {
  const SubjectSessionOverview({
    required this.durationSeconds,
    required this.link,
    this.onTap,
    super.key,
  });

  final int? durationSeconds;
  final String? link;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Duration? duration;
    String? videoId;
    String? imageUrl;

    if (durationSeconds != null) duration = Duration(seconds: durationSeconds!);
    if ((link ?? '').isNotEmpty) {
      videoId = YoutubePlayer.convertUrlToId(link!);
    }
    if (videoId != null) {
      imageUrl = YoutubePlayer.getThumbnail(videoId: videoId);
    }

    if (imageUrl != null) {
      return Card(
        margin: const EdgeInsets.all(16),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onTap,
          child: _Thumbnail(imageUrl: imageUrl, duration: duration),
        ),
      );
    }
    return ListTile(
      onTap: onTap,
      title: const Text('Pendahuluan'),
      subtitle: const Text('Lihat video dan dokumen pendahuluan.'),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 18,
      ),
    );
  }
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail({required this.imageUrl, required this.duration});

  final String imageUrl;
  final Duration? duration;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0, 0.5),
                end: Alignment.center,
                colors: <Color>[
                  Color(0x60000000),
                  Color(0x00000000),
                ],
              ),
            ),
          ),
          const Center(
            child: PhosphorIcon(
              PhosphorIconsFill.playCircle,
              color: Colors.white,
              size: 48,
            ),
          ),
          Positioned(
            left: 12,
            right: 12,
            bottom: 12,
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Pendahuluan',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      height: 24 / 16,
                      color: Colors.white,
                      shadows: [Shadow(blurRadius: 8)],
                    ),
                  ),
                ),
                if (duration != null)
                  Text(
                    duration!.ms,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      height: 21 / 14,
                      color: Colors.white,
                      shadows: [Shadow(blurRadius: 8)],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
