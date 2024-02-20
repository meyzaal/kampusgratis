import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    required this.leadingIcon,
    required this.title,
    super.key,
    this.trailing,
    this.onTap,
  });

  final Widget leadingIcon;
  final Widget title;
  final Widget? trailing;
  final VoidCallback? onTap;

  static Widget get userInfo => _icon(PhosphorIconsRegular.user);
  static Widget get editUser => _icon(PhosphorIconsRegular.pencilSimple);
  static Widget get gradesAndCertificates =>
      _icon(PhosphorIconsRegular.certificate);
  static Widget get changePassword => _icon(PhosphorIconsRegular.lock);
  static Widget get about => _icon(PhosphorIconsRegular.info);
  static Widget get themeLight => _icon(PhosphorIconsRegular.sunDim);
  static Widget get themeDark => _icon(PhosphorIconsRegular.moonStars);
  static Widget get logOut => _icon(PhosphorIconsRegular.signOut);

  static Widget get arrowRight => _icon(PhosphorIconsRegular.caretRight);

  static Widget _icon(IconData iconData) => PhosphorIcon(iconData);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Widget? trailingWidget;
    if (trailing != null) {
      trailingWidget = IconTheme(
        data: IconThemeData(
          size: 20,
          color: theme.colorScheme.onSurfaceVariant,
        ),
        child: trailing!,
      );
    }
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: theme.colorScheme.secondaryContainer,
        child: IconTheme(
          data: IconThemeData(
            color: theme.colorScheme.onSecondaryContainer,
            size: 20,
          ),
          child: leadingIcon,
        ),
      ),
      title: title,
      trailing: trailingWidget,
      contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      onTap: onTap,
    );
  }
}
