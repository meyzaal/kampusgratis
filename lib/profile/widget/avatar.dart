import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kampusgratis/profile/profile.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

enum _Options {
  // KG API does not support removing avatars
  // deleteAvatar,
  updateFromGallery,
  updateFromCamera
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({required this.avatarUrl, super.key});

  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    const avatarSize = 64.0;
    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (previous, current) =>
          previous.updateAvatarStatus != current.updateAvatarStatus,
      listener: (context, state) {
        if (state.updateAvatarStatus.isSuccess) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text('Berhasil memperbarui foto profil.'),
                showCloseIcon: true,
              ),
            );
        }
        if (state.updateAvatarStatus.isFailure) {
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
      },
      builder: (context, state) {
        final theme = Theme.of(context);
        return SizedBox.fromSize(
          size: const Size.fromRadius(avatarSize + 4),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Hero(
                tag: 'profile-hero-avatar',
                child: CustomAvatar(
                  avatarUrl: avatarUrl,
                  radius: avatarSize,
                  child: state.updateAvatarStatus.isLoading
                      ? CircularProgressIndicator.adaptive(
                          valueColor: AlwaysStoppedAnimation(
                            theme.colorScheme.onPrimaryContainer,
                          ),
                        )
                      : null,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton.filled(
                  onPressed: () {
                    showModalBottomSheet<_Options>(
                      context: context,
                      useRootNavigator: true,
                      builder: (context) => const _AvatarUpdateOptions(),
                    ).then((value) {
                      if (value == null) return;
                      switch (value) {
                        // case _Options.deleteAvatar:
                        // showDialog<void>(
                        //   context: context,
                        //   builder: (_) => BlocProvider.value(
                        //     value: BlocProvider.of<ProfileBloc>(context),
                        //     child: const _ConfirmDeleteAvatarDialog(),
                        //   ),
                        // );
                        case _Options.updateFromGallery:
                          context.read<ProfileBloc>().add(
                                const ProfileEvent.avatarChanged(
                                  ImageSource.gallery,
                                ),
                              );
                        case _Options.updateFromCamera:
                          context.read<ProfileBloc>().add(
                                const ProfileEvent.avatarChanged(
                                  ImageSource.camera,
                                ),
                              );
                      }
                    });
                  },
                  icon: const PhosphorIcon(PhosphorIconsFill.camera),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AvatarUpdateOptions extends StatelessWidget {
  const _AvatarUpdateOptions();

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Text(
            'Perbarui foto profil',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              height: 27 / 18,
            ),
          ),
        ),
        ListTile(
          leading: const PhosphorIcon(PhosphorIconsFill.camera),
          title: const Text('Ambil foto dengan kamera'),
          onTap: () => context.pop(_Options.updateFromCamera),
        ),
        ListTile(
          leading: const PhosphorIcon(PhosphorIconsFill.image),
          title: const Text('Pilih foto di galeri'),
          onTap: () => context.pop(_Options.updateFromGallery),
        ),
        // ListTile(
        //   leading: const PhosphorIcon(PhosphorIconsFill.trash),
        //   iconColor: theme.extension<CustomColors>()?.danger,
        //   textColor: theme.extension<CustomColors>()?.danger,
        //   title: const Text(
        //     'Hapus foto',
        //   ),
        //   onTap: () => context.pop(_Options.deleteAvatar),
        // ),
      ],
    );
  }
}

// class _ConfirmDeleteAvatarDialog extends StatelessWidget {
//   const _ConfirmDeleteAvatarDialog();

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final buttonStyle = theme.filledButtonTheme.style?.copyWith(
//       backgroundColor:
//           MaterialStatePropertyAll(theme.extension<CustomColors>()?.danger),
//       foregroundColor:
//           MaterialStatePropertyAll(theme.extension<CustomColors>()?.onDanger
// ),
//     );
//     return CustomDialog(
//       icon: const PhosphorIcon(PhosphorIconsFill.warning),
//       iconColor: theme.extension<CustomColors>()?.sourceWarning,
//       title: const Text(
//         'Hapus foto',
//         textAlign: TextAlign.center,
//       ),
//       content: const Text(
//         'Yakin ingin hapus foto profil?',
//         textAlign: TextAlign.center,
//       ),
//       actions: [
//         BlocConsumer<ProfileBloc, ProfileState>(
//           listener: (context, state) {
//             if (state.updateAvatarStatus.isSuccess ||
//                 state.updateAvatarStatus.isFailure) {
//               context.pop();
//             }
//           },
//           builder: (context, state) {
//             return FilledButton(
//               style: buttonStyle,
//               onPressed: () {
//                 if (state.updateAvatarStatus.isLoading) return;
//                 context
//                     .read<ProfileBloc>()
//                     .add(const ProfileEvent.avatarDeleted());
//               },
//               child: state.updateAvatarStatus.isLoading
//                   ? SizedBox.square(
//                       dimension: 20,
//                       child: CircularProgressIndicator.adaptive(
//                         valueColor:
//                             AlwaysStoppedAnimation(
// theme.colorScheme.onPrimary),
//                       ),
//                     )
//                   : const Text('Ya, hapus'),
//             );
//           },
//         ),
//         OutlinedButton(
//           onPressed: () => context.pop(),
//           child: const Text('Batal'),
//         ),
//       ],
//     );
//   }
// }
