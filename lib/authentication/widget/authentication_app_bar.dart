import 'package:flutter/material.dart';

class AuthenticationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AuthenticationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      iconTheme: IconThemeData(color: theme.colorScheme.primary),
      backgroundColor: theme.scaffoldBackgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
