import 'package:flutter/material.dart';
import 'package:kampusgratis/gen/gen.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

class ErrorStateWidget extends StatelessWidget {
  const ErrorStateWidget({required this.message, super.key, this.onRetry});

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.images.exceptionFigure.svg(
          width: 150,
          fit: BoxFit.fitWidth,
          placeholderBuilder: (context) => Image.memory(kTransparentImage),
        ),
        const SizedBox(height: 24),
        const Text(
          'Ups! Sepertinya ada masalah.',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 24 / 16,
          ),
        ),
        Text(
          message,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            height: 18 / 12,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        if (onRetry != null) ...[
          const SizedBox(height: 32),
          FilledButton.icon(
            icon: const PhosphorIcon(PhosphorIconsRegular.arrowsClockwise),
            label: const Text('Muat ulang'),
            onPressed: onRetry,
          ),
        ],
      ],
    );
  }
}
