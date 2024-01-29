import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/components/components.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VerifyEmailDialog extends StatelessWidget {
  const VerifyEmailDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      icon: const PhosphorIcon(PhosphorIconsFill.warningCircle),
      iconColor: Colors.red,
      title: const Text('Email belum diverifikasi'),
      content: const Text(
        'Silakan verifikasi email Anda terlebih dahulu untuk melanjutkan',
        textAlign: TextAlign.center,
      ),
      actions: [
        BlocProvider(
          create: (context) => RequestEmailVerificationCubit(
            context.read<AuthenticationRepository>(),
          ),
          child: const _SubmitButton(),
        ),
      ],
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RequestEmailVerificationCubit,
        RequestEmailVerificationState>(
      listener: (context, state) {
        if (state is RequestEmailVerificationFailureState) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          context.pop(false);
        }
        if (state is RequestEmailVerificationSuccessState) {
          context.pop(true);
        }
      },
      builder: (context, state) {
        return FilledButton(
          onPressed: () {
            if (state is RequestEmailVerificationLoadingState) return;
            // TODO(meyzaal): Add actions
          },
          child: state is RequestEmailVerificationLoadingState
              ? const SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : const Text('Verifikasi email'),
        );
      },
    );
  }
}
