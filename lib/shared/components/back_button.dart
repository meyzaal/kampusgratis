import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return context.canPop()
        ? BackButton(
            color: theme.colorScheme.primary,
            onPressed: () => context.pop(),
            style: IconButton.styleFrom(padding: const EdgeInsets.all(16)),
          )
        : const SizedBox();
  }
}
