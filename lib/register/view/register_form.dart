import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/register/register.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure) {
          final message = state.message ?? 'Terjadi kesalahan (message-null).';
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(content: Text(message), showCloseIcon: true),
            );
        }
        if (state.status.isSuccess) {
          showDialog<bool>(
            context: context,
            builder: (_) => VerifyEmailDialog(
              type: VerifyEmailType.register,
              email: state.email.value,
            ),
          ).then((value) {
            if (value != true) return;
            VerifyOtpRoute(
              email: state.email.value,
              type: OtpVerificationType.emailVerification,
            ).push<bool>(context).then((success) {
              if (success != true) return;
              const LoginRoute().go(context);
            });
          });
        }
        if (state.status.isCanceled) {
          showDialog<bool>(
            context: context,
            builder: (_) => const EmailAlreadyRegisteredDialog(),
          ).then((value) {
            if (value != true) return;
            const LoginRoute().pushReplacement(context);
          });
        }
      },
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _NameInput(),
          _EmailInput(),
          // _PhoneInput(),
          _PasswordTip(),
          _PasswordInput(),
          _ConfirmedPasswordInput(),
          _TermsAndConditionsCheckBox(),
          _SubmitButton(),
        ],
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return FilledButton(
            onPressed: state.isValid
                ? () {
                    final focus = FocusScope.of(context);
                    if (focus.hasFocus) focus.unfocus();
                    if (state.status.isInProgress) return;
                    context
                        .read<RegisterBloc>()
                        .add(const RegisterEvent.formSubmitted());
                  }
                : null,
            child: state.status.isInProgress
                ? SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        theme.colorScheme.onPrimary,
                      ),
                    ),
                  )
                : const Text('Daftar'),
          );
        },
      ),
    );
  }
}

class _TermsAndConditionsCheckBox extends StatefulWidget {
  const _TermsAndConditionsCheckBox();

  @override
  State<_TermsAndConditionsCheckBox> createState() =>
      _TermsAndConditionsCheckBoxState();
}

class _TermsAndConditionsCheckBoxState
    extends State<_TermsAndConditionsCheckBox> {
  late final TapGestureRecognizer _checkBoxRecognizer;
  late final TapGestureRecognizer _termsRecognizer;
  late final TapGestureRecognizer _conditionsRecognizer;

  @override
  void initState() {
    _checkBoxRecognizer = TapGestureRecognizer();
    _termsRecognizer = TapGestureRecognizer();
    _conditionsRecognizer = TapGestureRecognizer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
      child: Row(
        children: [
          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.termsAndConditions != current.termsAndConditions,
            builder: (context, state) {
              return Checkbox.adaptive(
                onChanged: (value) {
                  // if (value == null) return;
                  context
                      .read<RegisterBloc>()
                      .add(const RegisterEvent.termsAndConditionsChanged());
                },
                value: state.termsAndConditions.value ?? false,
              );
            },
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 18 / 12,
                  color: theme.colorScheme.outline,
                ),
                children: [
                  TextSpan(
                    text: 'Saya menyetujui ',
                    recognizer: _checkBoxRecognizer
                      ..onTap = () {
                        context.read<RegisterBloc>().add(
                              const RegisterEvent.termsAndConditionsChanged(),
                            );
                      },
                  ),
                  TextSpan(
                    text: 'Syarat dan Ketentuan',
                    style: GoogleFonts.poppins(
                      color: theme.colorScheme.primary,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600,
                    ),
                    recognizer: _termsRecognizer
                      ..onTap = () {
                        final url = Uri(
                          scheme: 'https',
                          host: 'kampusgratis.id',
                          path: 'syarat-ketentuan',
                        );
                        launchUrl(url).then((canLaunch) {
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
                      },
                  ),
                  TextSpan(
                    text: ' serta ',
                    recognizer: _checkBoxRecognizer
                      ..onTap = () {
                        context.read<RegisterBloc>().add(
                              const RegisterEvent.termsAndConditionsChanged(),
                            );
                      },
                  ),
                  TextSpan(
                    text: 'Kebijakan Privasi',
                    style: GoogleFonts.poppins(
                      color: theme.colorScheme.primary,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600,
                    ),
                    recognizer: _conditionsRecognizer
                      ..onTap = () {
                        final url = Uri(
                          scheme: 'https',
                          host: 'kampusgratis.id',
                          path: 'kebijakan-privasi',
                        );
                        launchUrl(url).then((canLaunch) {
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
                      },
                  ),
                  TextSpan(
                    text: ' Kampus Gratis.',
                    recognizer: _checkBoxRecognizer
                      ..onTap = () {
                        context.read<RegisterBloc>().add(
                              const RegisterEvent.termsAndConditionsChanged(),
                            );
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _checkBoxRecognizer.dispose();
    _termsRecognizer.dispose();
    _conditionsRecognizer.dispose();

    super.dispose();
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  const _ConfirmedPasswordInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        buildWhen: (previous, current) =>
            previous.password != current.password ||
            previous.confirmedPassword != current.confirmedPassword,
        builder: (context, state) {
          return PasswordInputField(
            labelText: 'Konfirmasi Kata Sandi',
            hintText: 'Masukkan kata sandi',
            onChanged: (confirmedPassword) => context
                .read<RegisterBloc>()
                .add(RegisterEvent.confirmedPasswordChanged(confirmedPassword)),
            errorText: state.confirmedPassword.isPure
                ? null
                : state.confirmedPassword.error?.message,
          );
        },
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        buildWhen: (previous, current) =>
            previous.password != current.password ||
            previous.confirmedPassword != current.confirmedPassword,
        builder: (context, state) {
          return PasswordInputField(
            labelText: 'Kata Sandi',
            hintText: 'Masukkan kata sandi',
            // helperText: state.password.isValid
            //     ? null
            //     : '''Harus terdiri dari 8 karakter atau lebih dan mengandung setidaknya 1 angka dan 1 huruf kapital.''',
            // helperMaxLines: 3,
            onChanged: (password) => context
                .read<RegisterBloc>()
                .add(RegisterEvent.passwordChanged(password)),
            errorText:
                state.password.isPure ? null : state.password.error?.message,
          );
        },
      ),
    );
  }
}

class _PasswordTip extends StatelessWidget {
  const _PasswordTip({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      elevation: 0,
      color: theme.extension<CustomColors>()?.warningContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhosphorIcon(
              PhosphorIconsFill.warning,
              color: theme.extension<CustomColors>()?.onWarningContainer,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                '''Kata sandi harus terdiri dari 8 karakter atau lebih, serta mengandung setidaknya 1 angka dan 1 huruf kapital.''',
                style: TextStyle(
                  fontSize: 12,
                  height: 18 / 12,
                  color: theme.extension<CustomColors>()?.onWarningContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class _PhoneInput extends StatelessWidget {
//   const _PhoneInput();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
//       child: BlocBuilder<RegisterBloc, RegisterState>(
//         buildWhen: (previous, current) => previous.phone != current.phone,
//         builder: (context, state) {
//           return CustomTextField(
//             labelText: 'Nomor Telepon',
//             decoration: InputDecoration(
//               hintText: 'Masukkan nomor telepon',
//               errorText: state.phone.isPure ? null : state.phone.error?.message,
//             ),
//             onChanged: (phone) => context
//                 .read<RegisterBloc>()
//                 .add(RegisterEvent.phoneChanged(phone)),
//             textInputAction: TextInputAction.next,
//             keyboardType: TextInputType.phone,
//           );
//         },
//       ),
//     );
//   }
// }

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return CustomTextField(
            labelText: 'Email',
            decoration: InputDecoration(
              hintText: 'Masukkan email',
              errorText: state.email.isPure ? null : state.email.error?.message,
            ),
            onChanged: (email) => context
                .read<RegisterBloc>()
                .add(RegisterEvent.emailChanged(email)),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            inputFormatters: [
              InputFormatters.ignoreWhiteSpaces,
              InputFormatters.lowerCase,
            ],
          );
        },
      ),
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 8),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        buildWhen: (previous, current) => previous.name != current.name,
        builder: (context, state) {
          return CustomTextField(
            labelText: 'Nama Lengkap',
            decoration: InputDecoration(
              hintText: 'Masukkan nama lengkap',
              errorText: state.name.isPure ? null : state.name.error?.message,
            ),
            onChanged: (name) => context
                .read<RegisterBloc>()
                .add(RegisterEvent.nameChanged(name)),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
          );
        },
      ),
    );
  }
}
