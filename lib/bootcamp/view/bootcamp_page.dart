import 'package:bootcamp_repository/bootcamp_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/bootcamp/bootcamp.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:url_launcher/url_launcher.dart';

class BootcampPage extends StatelessWidget {
  const BootcampPage({super.key, this.onBootcampEnrolled});

  final VoidCallback? onBootcampEnrolled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bootcamp')),
      body: BlocProvider(
        create: (context) => BootcampBloc(
          context.read<BootcampRepository>(),
          onBootcampEnrolled: onBootcampEnrolled,
        )..add(const BootcampEvent.fetched(isLoadMore: false)),
        child: const BootcampView(),
      ),
    );
  }
}

class BootcampView extends StatelessWidget {
  const BootcampView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BootcampBloc, BootcampState>(
      listener: (context, state) {
        if (state.status.isSuccess && !state.dialogShown) {
          showDialog<bool>(
            context: context,
            builder: (context) => const BootcampWelcomeDialog(),
          ).then((value) {
            context.read<BootcampBloc>().add(const BootcampEvent.dialogShown());
            if (value != true) return;
            final uri = Uri(
              scheme: 'https',
              host: 'wa.me',
              path: '6282282838447',
              queryParameters: {
                'text':
                    '''Haloooo M-Knows, saya ingin bertanya mengenai Bootcamp.''',
              },
            );
            launchUrl(uri).then((canLaunch) {
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
          });
        }
      },
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        switch (state.status) {
          case BootcampStatus.initial:
            return const SizedBox();
          case BootcampStatus.loading:
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          case BootcampStatus.failure:
            final message =
                state.message ?? 'Terjadi kesalahan (message-null).';
            return ErrorStateWidget(message: message);
          case BootcampStatus.success:
            return const BootcampList();
        }
      },
    );
  }
}
