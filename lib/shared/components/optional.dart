import 'package:flutter/material.dart';

class Optional extends StatelessWidget {
  const Optional({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '(opsional)',
      style: TextStyle(
        color: Theme.of(context).colorScheme.outline,
        fontSize: 12,
      ),
    );
  }
}
