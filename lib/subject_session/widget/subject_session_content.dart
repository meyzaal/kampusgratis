import 'package:flutter/material.dart';

class SubjectSessionContent extends StatelessWidget {
  const SubjectSessionContent({
    super.key,
    this.title,
    this.leading,
    this.trailing,
    this.onTap,
  });

  final Widget? title;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget? leadingWidget;
    Widget? trailingWidget;

    const iconTheme = IconThemeData(size: 20);

    if (leading != null) {
      leadingWidget = IconTheme(data: iconTheme, child: leading!);
    }
    if (trailing != null) {
      trailingWidget = IconTheme(data: iconTheme, child: trailing!);
    }

    return ListTile(
      title: title,
      leading: leadingWidget,
      trailing: trailingWidget,
      onTap: onTap,
      enabled: onTap != null,
      titleTextStyle: theme.listTileTheme.titleTextStyle?.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 21 / 14,
      ),
    );
  }
}
