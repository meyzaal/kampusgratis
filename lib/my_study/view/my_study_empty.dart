import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/gen/gen.dart';
import 'package:kampusgratis/my_study/my_study.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

enum _Options { studyPlan, bootcamp }

class MyStudyEmpty extends StatelessWidget {
  const MyStudyEmpty({required this.message, super.key, this.action});

  const MyStudyEmpty.ongoing({super.key})
      : message = 'Anda belum mengambil studi atau bootcamp satupun.',
        action = const _Action();

  const MyStudyEmpty.completed({super.key})
      : message = 'Belum ada studi atau bootcamp yang selesai.',
        action = null;

  final String message;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.emptyFigure.svg(
              width: 150,
              fit: BoxFit.fitWidth,
              placeholderBuilder: (context) => Image.memory(kTransparentImage),
            ),
            const SizedBox(height: 24),
            const Text(
              'Tidak ada data.',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 24 / 16,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              message,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                height: 18 / 12,
                color: Theme.of(context).colorScheme.outline,
              ),
              textAlign: TextAlign.center,
            ),
            if (action != null) ...[const SizedBox(height: 32), action!],
          ],
        ),
      ),
    );
  }
}

class _Action extends StatelessWidget {
  const _Action();

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      child: const Text('Ikuti pembelajaran'),
      onPressed: () {
        showModalBottomSheet<_Options>(
          context: context,
          useRootNavigator: true,
          builder: (context) => const _LearningOptions(),
        ).then((value) {
          if (value == null) return;
          switch (value) {
            case _Options.bootcamp:
              BootcampRoute(
                $extra: BootcampExtra(
                  () => context
                      .read<MyStudyBloc>()
                      .add(const MyStudyEvent.fetched(forceRefresh: true)),
                ),
              ).push<void>(context);
            case _Options.studyPlan:
            // TODO(meyzaal): Handle this case.
          }
        });
      },
    );
  }
}

class _LearningOptions extends StatelessWidget {
  const _LearningOptions();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Text(
            'Pilih studi atau bootcamp',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              height: 27 / 18,
            ),
          ),
        ),
        ListTile(
          leading: const PhosphorIcon(PhosphorIconsFill.fileText),
          title: const Text('Ambil studi'),
          onTap: () => context.pop(_Options.studyPlan),
        ),
        ListTile(
          leading: const PhosphorIcon(PhosphorIconsFill.rocket),
          title: const Text('Daftar bootcamp'),
          onTap: () => context.pop(_Options.bootcamp),
        ),
      ],
    );
  }
}
