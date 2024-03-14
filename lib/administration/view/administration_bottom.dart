import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/administration/administration.dart';
import 'package:kampusgratis/app/app.dart';

class AdministrationBottom extends StatelessWidget {
  const AdministrationBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<AdministrationBloc, AdministrationState>(
      listenWhen: (previous, current) =>
          previous.submissionStatus != current.submissionStatus,
      listener: (context, state) {
        if (state.submissionStatus.isFailure ||
            state.submissionStatus.isCanceled) {
          final message = state.message ?? 'Terjadi kesalahan (message-null).';
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(
                content: Text(message),
                showCloseIcon: true,
              ),
            );
        }
        if (state.submissionStatus.isSuccess) {
          final status = state.administration?.details?.status;
          if (status != null && status.isAccepted) {
            ScaffoldMessenger.of(context)
              ..clearSnackBars()
              ..showSnackBar(
                const SnackBar(
                  content: Text('Administrasi anda telah disetujui'),
                  showCloseIcon: true,
                ),
              );
            const BootcampRoute()
                .push<void>(context)
                .then((value) => context.pop(true));
          } else {
            ScaffoldMessenger.of(context)
              ..clearSnackBars()
              ..showSnackBar(
                const SnackBar(
                  content: Text('Administrasi berhasil dikirim'),
                  showCloseIcon: true,
                ),
              );
          }
        }
      },
      builder: (context, state) {
        if (state.fetchAdministrationStatus.isLoading ||
            state.administrationMode.isInitial) return const SizedBox();

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Divider(height: 0),
            Padding(
              padding: const EdgeInsets.all(16),
              child: FilledButton(
                onPressed: state.isValid
                    ? () => context
                        .read<AdministrationBloc>()
                        .add(const AdministrationEvent.formSubmitted())
                    : null,
                child: state.submissionStatus.isInProgress
                    ? SizedBox.square(
                        dimension: 20,
                        child: CircularProgressIndicator.adaptive(
                          valueColor: AlwaysStoppedAnimation(
                            theme.colorScheme.onPrimary,
                          ),
                        ),
                      )
                    : const Text('Kirim'),
              ),
            ),
          ],
        );
      },
    );
  }
}
