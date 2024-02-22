import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/edit_profile/edit_profile.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:kg_client/kg_client.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:user_repository/user_repository.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditProfileBloc, EditProfileState>(
      listener: (context, state) {
        if (state.status.isFailureOrCanceled) {
          final message = state.message ?? 'Terjadi kesalahan (message-null).';
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(content: Text(message), showCloseIcon: true),
            );
        }
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text('Informasi berhasil diperbarui'),
                showCloseIcon: true,
              ),
            );
          context.pop(true);
        }
      },
      child: PopScope(
        canPop: context
            .select((EditProfileBloc bloc) => bloc.state.status.isInitial),
        onPopInvoked: (didPop) {
          if (!didPop) {
            showDialog<bool>(
              context: context,
              builder: (context) => const ConfirmCancelEditDialog(),
            ).then((value) {
              if (value != true) return;
              context.pop(false);
            });
          }
        },
        child: ListView(
          children: const [
            _NameInput(),
            _GenderInput(),
            _PhoneInput(),
            _SubmitButton(),
          ],
        ),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<EditProfileBloc, EditProfileState>(
        builder: (context, state) {
          final theme = Theme.of(context);
          return FilledButton(
            onPressed: state.isValid
                ? () {
                    final focus = FocusScope.of(context);
                    if (focus.hasFocus) focus.unfocus();
                    if (state.status.isLoading) return;
                    context
                        .read<EditProfileBloc>()
                        .add(const EditProfileEvent.formSubmitted());
                  }
                : null,
            child: state.status.isLoading
                ? SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        theme.colorScheme.onPrimary,
                      ),
                    ),
                  )
                : const Text('Simpan'),
          );
        },
      ),
    );
  }
}

class _PhoneInput extends StatelessWidget {
  const _PhoneInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: BlocBuilder<EditProfileBloc, EditProfileState>(
        builder: (context, state) {
          return CustomTextField(
            initialValue: state.user?.phoneNumber,
            labelText: 'Nomor Telepon',
            decoration: InputDecoration(
              hintText: 'Masukkan nomor telepon',
              errorText: state.phone.isPure ? null : state.phone.error?.message,
            ),
            onChanged: (phone) => context
                .read<EditProfileBloc>()
                .add(EditProfileEvent.phoneChanged(phone)),
            keyboardType: TextInputType.phone,
            autofocus: true,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }
}

class _GenderInput extends StatelessWidget {
  const _GenderInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: BlocBuilder<EditProfileBloc, EditProfileState>(
        builder: (context, state) {
          return CustomInputField(
            labelText: 'Jenis Kelamin',
            value: state.gender.isPure
                ? state.user?.gender?.nameInIdn
                : state.gender.value?.nameInIdn,
            decoration: InputDecoration(
              hintText: 'Pilih jenis kelamin',
              errorText:
                  state.gender.isPure ? null : state.gender.error?.message,
              suffixIcon: const PhosphorIcon(
                PhosphorIconsFill.caretDown,
                size: 18,
              ),
            ),
            onTap: () {
              showDialog<Gender>(
                context: context,
                builder: (context) => SelectGenderDialog(
                  initialValue: state.gender.value,
                ),
              ).then((value) {
                if (value == null) return;
                context
                    .read<EditProfileBloc>()
                    .add(EditProfileEvent.genderChanged(value));
              });
            },
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
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: BlocBuilder<EditProfileBloc, EditProfileState>(
        builder: (context, state) {
          return CustomTextField(
            initialValue: state.user?.fullName,
            labelText: 'Nama Lengkap',
            decoration: InputDecoration(
              hintText: 'Masukkan nama lengkap',
              errorText: state.name.isPure ? null : state.name.error?.message,
            ),
            onChanged: (name) => context
                .read<EditProfileBloc>()
                .add(EditProfileEvent.nameChanged(name)),
            keyboardType: TextInputType.name,
            autofocus: true,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }
}
