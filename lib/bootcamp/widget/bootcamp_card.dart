import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:kampusgratis/app/routes/routes.dart';
import 'package:kampusgratis/bootcamp/bootcamp.dart';
import 'package:kampusgratis/gen/assets.gen.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BootcampCard extends StatelessWidget {
  const BootcampCard({required this.bootcamp, required this.index, super.key});

  final BootcampData bootcamp;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BootcampBloc, BootcampState>(
      listenWhen: (previous, current) =>
          previous.datas[index].status != current.datas[index].status,
      listener: (context, state) {
        if (state.datas[index].status.isFailure) {
          final message =
              state.datas[index].message ?? 'Terjadi kesalahan (message-null).';
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(
                content: Text(message),
                showCloseIcon: true,
              ),
            );
        }
        if (state.datas[index].status.isSuccess) {
          showDialog<void>(
            context: context,
            builder: (context) => const SuccessEnrollBootcampDialog(),
          ).then(
            (_) => context.pop(),
          );
        }
      },
      child: Card.outlined(
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Thumbnail(
              imageUrl: bootcamp.data.thumbnail,
              level: bootcamp.data.level,
            ),
            if (bootcamp.data.startAt != null)
              _Date(startDate: bootcamp.data.startAt!),
            _Content(
              title: bootcamp.data.name,
              description: bootcamp.data.description,
            ),
            _Actions(
              bootcampId: bootcamp.data.id,
              enrollStatus: bootcamp.status,
              isAvailable: bootcamp.data.isAvailable,
              isTaken: bootcamp.data.isTaken,
              totalSession: bootcamp.data.totalSession,
              brochureUrl: bootcamp.data.brochure,
            ),
          ],
        ),
      ),
    );
  }
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail({
    required this.imageUrl,
    required this.level,
  });

  final String? imageUrl;
  final int level;

  @override
  Widget build(BuildContext context) {
    final image = imageUrl != null
        ? CachedNetworkImageProvider(imageUrl!)
        : Assets.images.logoKgOrange.provider();
    final fit = imageUrl != null ? BoxFit.cover : BoxFit.contain;
    return AspectRatio(
      aspectRatio: 21 / 9,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.outline,
          image: DecorationImage(image: image, fit: fit),
        ),
        padding: const EdgeInsets.all(16),
        alignment: Alignment.topRight,
        child: Material(
          color: levelColor,
          borderRadius: BorderRadius.circular(4),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'Tingkatan: $levelName',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 21 / 14,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  String get levelName {
    switch (level) {
      case 1:
        return 'Dasar';
      case 2:
        return 'Menengah';
      case 3:
        return 'Lanjutan';
      default:
        return level.toString();
    }
  }

  Color get levelColor {
    switch (level) {
      case 1:
        return Colors.orange;
      case 2:
        return Colors.deepOrange;
      case 3:
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}

class _Date extends StatelessWidget {
  const _Date({required this.startDate});

  final String startDate;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    var formattedDate = '-';
    if (startDate.isNotEmpty && startDate != '-') {
      final date = DateTime.parse(startDate).toLocal();
      formattedDate = DateFormat.yMMMEd('id').format(date);
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Row(
        children: [
          PhosphorIcon(
            PhosphorIconsFill.calendar,
            size: 20,
            color: colorScheme.secondary,
          ),
          const SizedBox(width: 8),
          Text(
            formattedDate,
            style: TextStyle(
              fontSize: 14,
              height: 21 / 14,
              color: colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            height: 24 / 16,
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        children: [
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              height: 21 / 14,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions({
    required this.bootcampId,
    required this.enrollStatus,
    required this.isAvailable,
    required this.isTaken,
    required this.totalSession,
    this.brochureUrl,
  });

  final String bootcampId;
  final BootcampStatus enrollStatus;
  final bool isAvailable;
  final bool isTaken;
  final int totalSession;
  final String? brochureUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: brochureUrl == null
                  ? null
                  : () {
                      if (brochureUrl!.endsWith('.pdf')) {
                        PdfViewerRoute.network(
                          brochureUrl!,
                          title: 'Brosur Bootcamp',
                        ).push<void>(context);
                      } else {
                        launchUrl(Uri.parse(brochureUrl!)).then((canLaunch) {
                          if (!canLaunch) {
                            ScaffoldMessenger.of(context)
                              ..clearSnackBars()
                              ..showSnackBar(
                                const SnackBar(
                                  content: Text('Tidak dapat membuka tautan.'),
                                  showCloseIcon: true,
                                ),
                              );
                          }
                        });
                      }
                    },
              child: const Text('Detail'),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: FilledButton(
              onPressed: isAvailable && totalSession > 0 && !isTaken
                  ? () {
                      if (enrollStatus.isLoading) return;
                      showDialog<bool>(
                        context: context,
                        builder: (context) =>
                            const ConfirmEnrollBootcampDialog(),
                      ).then((value) {
                        if (value != true) return;
                        context
                            .read<BootcampBloc>()
                            .add(BootcampEvent.enrolled(bootcampId));
                      });
                    }
                  : null,
              child: enrollStatus.isLoading
                  ? const SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator.adaptive(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    )
                  : Text(_primaryButtonLabel),
            ),
          ),
        ],
      ),
    );
  }

  String get _primaryButtonLabel {
    if (isTaken) return 'Terdaftar';
    if (!isAvailable || totalSession < 1) return 'Tidak tersedia';
    return 'Daftar';
  }
}
