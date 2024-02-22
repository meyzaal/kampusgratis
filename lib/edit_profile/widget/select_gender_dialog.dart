import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:kg_client/kg_client.dart';
import 'package:user_repository/user_repository.dart';

class SelectGenderDialog extends StatelessWidget {
  const SelectGenderDialog({
    super.key,
    this.initialValue,
  });

  final Gender? initialValue;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      title: const Text('Jenis Kelamin'),
      contentPadding: const EdgeInsets.only(
        top: 16,
        bottom: 24,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: Gender.values
            .map(
              (gender) => RadioListTile<Gender>.adaptive(
                value: gender,
                groupValue: initialValue,
                title: Text(gender.nameInIdn),
                onChanged: (value) {
                  if (value == null) return;
                  context.pop(value);
                },
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding: const EdgeInsets.only(left: 24, right: 12),
              ),
            )
            .toList(),
      ),
    );
  }
}
