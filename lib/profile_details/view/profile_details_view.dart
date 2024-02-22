import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/profile/profile.dart';
import 'package:kampusgratis/profile_details/profile_details.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:user_repository/user_repository.dart';

class ProfileDetailsView extends StatelessWidget {
  const ProfileDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileDetailsCubit, ProfileDetailsState>(
      builder: (context, state) {
        return state.when(
          initial: SizedBox.new,
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          failure: (message) => Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: ErrorStateWidget(
                message: message,
                onRetry: () => context.read<ProfileDetailsCubit>().started(),
              ),
            ),
          ),
          success: (user, details) {
            final theme = Theme.of(context);
            return ListTileTheme(
              data: ListTileThemeData(
                visualDensity: VisualDensity.compact,
                iconColor: theme.colorScheme.secondary,
              ),
              child: RefreshIndicator.adaptive(
                onRefresh: () async =>
                    context.read<ProfileDetailsCubit>().started(),
                child: ListView(
                  children: [
                    _UserDetails(user: user),
                    const _TitleSection('Perkuliahan'),
                    ...details.collegeInfoMap.entries.map(
                      (e) => ListTile(
                        title: Text(e.key),
                        subtitle: Text(e.value),
                        titleTextStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          height: 18 / 12,
                          color: theme.colorScheme.secondary,
                        ),
                        subtitleTextStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          height: 24 / 16,
                          fontWeight: FontWeight.w500,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                    const _TitleSection('Pencapaian'),
                    _AchievementTile(
                      iconData: PhosphorIconsFill.certificate,
                      title: '${details.totalCertificates}',
                      trailing: TextButton(
                        onPressed: () {},
                        child: const Text('Lihat sertifikat'),
                      ),
                    ),
                    _AchievementTile(
                      iconData: PhosphorIconsFill.chalkboardTeacher,
                      title:
                          '${details.finishedSubjects}/${details.currentSubjects}',
                      subtitle: 'Jumlah mata kuliah selesai dan terdaftar.',
                      trailing: TextButton(
                        onPressed: () {},
                        child: const Text('Lihat kuliah'),
                      ),
                    ),
                    const _TitleSection('Diskusi'),
                    ...details.discussions.map(
                      (e) => ListTile(
                        leading: e.leading,
                        title: e.title,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _AchievementTile extends StatelessWidget {
  const _AchievementTile({
    required this.iconData,
    required this.title,
    required this.trailing,
    this.subtitle,
  });

  final IconData iconData;
  final String title;
  final Widget trailing;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      subtitleTextStyle: GoogleFonts.poppins(
        fontSize: 12,
        height: 18 / 12,
        color: theme.colorScheme.outline,
      ),
      contentPadding: const EdgeInsets.only(left: 16),
      isThreeLine: subtitle != null,
      leading: PhosphorIcon(iconData),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: trailing,
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection(this.value);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Text(
        value,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          height: 27 / 18,
        ),
      ),
    );
  }
}

class _UserDetails extends StatelessWidget {
  const _UserDetails({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatar;
    final fullName = user.fullName;
    final phoneNumber = user.phoneNumber;
    final email = user.email;
    final role = user.role;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 4, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'profile-hero-avatar',
            child: CustomAvatar(
              avatarUrl: avatar,
              radius: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    height: 27 / 18,
                  ),
                ),
                Text(
                  email,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 21 / 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                if (phoneNumber != null)
                  Text(
                    phoneNumber,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 21 / 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                const SizedBox(height: 8),
                RoleBadge(role: role),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              const EditProfileRoute().push<bool>(context).then((updated) {
                if (updated != true) return;
                context.read<ProfileDetailsCubit>().userUpdated();
              });
            },
            iconSize: 20,
            icon: const PhosphorIcon(PhosphorIconsFill.pencilLine),
          ),
        ],
      ),
    );
  }
}

class _TileComponent {
  const _TileComponent({
    required this.leading,
    required this.title,
  });

  final Widget leading;
  final Widget title;
}

extension on Profile {
  Map<String, String> get collegeInfoMap => {
        'Fakultas': faculty ?? '-',
        'Program Studi': major ?? '-',
        'Semester': semester?.toString() ?? '-',
        'IPK': ipk ?? '-',
      };
  List<_TileComponent> get discussions => [
        _TileComponent(
          leading: const PhosphorIcon(PhosphorIconsFill.heart),
          title: Text('$discussionLikes'),
        ),
        _TileComponent(
          leading: const PhosphorIcon(PhosphorIconsFill.chat),
          title: Text('$discussionPosted'),
        ),
      ];
}
