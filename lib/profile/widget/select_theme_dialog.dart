import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/profile/profile.dart';
import 'package:kampusgratis/shared/shared.dart';

class SelectThemeDialog extends StatelessWidget {
  const SelectThemeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectThemeCubit, ThemeMode>(
      builder: (context, selectedTheme) {
        return CustomDialog(
          title: const Text('Ubah Tema'),
          contentPadding: const EdgeInsets.only(
            top: 16,
            bottom: 24,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: ThemeMode.values
                .map(
                  (theme) => RadioListTile.adaptive(
                    value: theme,
                    groupValue: selectedTheme,
                    title: Text(theme.nameInIdn),
                    onChanged: (value) {
                      if (value == null) return;
                      context
                          .read<SelectThemeCubit>()
                          .selectedThemeChanged(value);
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                    contentPadding: const EdgeInsets.only(left: 24, right: 12),
                  ),
                )
                .toList(),
          ),
          actions: [
            FilledButton(
              onPressed: () => context.pop(selectedTheme),
              child: const Text('Pilih'),
            ),
            OutlinedButton(
              onPressed: () => context.pop(null),
              child: const Text('Tutup'),
            ),
          ],
        );
      },
    );
  }
}
