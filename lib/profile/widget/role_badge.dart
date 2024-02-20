import 'package:flutter/material.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:kg_client/kg_client.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RoleBadge extends StatelessWidget {
  const RoleBadge({required this.role, super.key});

  final Role role;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    IconData iconData = PhosphorIconsRegular.user;
    if (role == Role.student) iconData = PhosphorIconsRegular.student;

    return Card(
      elevation: 0,
      color: theme.colorScheme.tertiary,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            PhosphorIcon(
              iconData,
              size: 18,
              color: theme.colorScheme.onTertiary,
            ),
            const SizedBox(width: 8),
            Text(
              role.nameInIdn,
              style: TextStyle(
                fontSize: 12,
                height: 18 / 12,
                color: theme.colorScheme.onTertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
