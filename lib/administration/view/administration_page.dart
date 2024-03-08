import 'package:administration_repository/administration_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/administration/administration.dart';
import 'package:kampusgratis/gen/gen.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:transparent_image/transparent_image.dart';

class AdministrationPage extends StatelessWidget {
  const AdministrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AdministrationBloc(context.read<AdministrationRepository>())
            ..add(const AdministrationEvent.fetched()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Administrasi')),
        body: const AdministrationView(),
        bottomNavigationBar: const AdministrationBottom(),
      ),
    );
  }
}

class AdministrationView extends StatelessWidget {
  const AdministrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        switch (state.fetchAdministrationStatus) {
          case AdministrationFetchStatus.initial:
            return const SizedBox();
          case AdministrationFetchStatus.loading:
            return const _Loading();
          case AdministrationFetchStatus.failure:
            return _Failure(message: state.message);
          case AdministrationFetchStatus.success:
            final administrationStatus = state.administration?.details?.status;
            if (administrationStatus == null) return const _EmptyStatus();
            if (state.administrationMode.isInitial) {
              if (administrationStatus.isAccepted) {
                return const _AcceptedStatus();
              }
              if (administrationStatus.isPending) {
                return const _PendingStatus();
              }
            }
            return const AdministrationForm();
        }
      },
    );
  }
}

class _AcceptedStatus extends StatelessWidget {
  const _AcceptedStatus();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.administrationAccepted.svg(
                          width: 150,
                          fit: BoxFit.fitWidth,
                          placeholderBuilder: (context) =>
                              Image.memory(kTransparentImage),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Selamat! Berkas telah berhasil diverifikasi',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            height: 24 / 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '''Selamat! Berkas administrasi Anda telah diterima. Anda sekarang resmi menjadi mahasiswa di KampusGratis.id! Anda dapat segera memulai pembelajaran di platform kami.''',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            height: 18 / 12,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      OutlinedButton(
                        onPressed: () => context.read<AdministrationBloc>().add(
                              const AdministrationEvent.modeChanged(
                                AdministrationMode.edit,
                              ),
                            ),
                        child: const Text('Lihat formulir'),
                      ),
                      const SizedBox(height: 8),
                      FilledButton(
                        onPressed: () {},
                        child: const Text('Ambil studi'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _PendingStatus extends StatelessWidget {
  const _PendingStatus();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Assets.images.administrationPending.svg(
                    width: 150,
                    fit: BoxFit.fitWidth,
                    placeholderBuilder: (context) =>
                        Image.memory(kTransparentImage),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Berkas terkirim!',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      height: 24 / 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Formulir administrasi dalam proses verifikasi.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      height: 18 / 12,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _EmptyStatus extends StatelessWidget {
  const _EmptyStatus();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Text('Gagal mendapatkan status Administrasi.'),
      ),
    );
  }
}

class _Failure extends StatelessWidget {
  const _Failure({this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ErrorStateWidget(
          message: message ?? 'Terjadi kesalahan (message-null).',
          onRetry: () => context
              .read<AdministrationBloc>()
              .add(const AdministrationEvent.fetched()),
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
