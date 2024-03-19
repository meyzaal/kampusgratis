import 'package:flutter/material.dart';
import 'package:kampusgratis/gen/gen.dart';
import 'package:transparent_image/transparent_image.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.images.emptyFigure.svg(
          width: 150,
          fit: BoxFit.fitWidth,
          placeholderBuilder: (context) => Image.memory(kTransparentImage),
        ),
        const SizedBox(height: 24),
        const Text(
          'Data tidak ditemukan.',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 24 / 16,
          ),
          textAlign: TextAlign.center,
        ),
        if (message != null)
          Text(
            message!,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              height: 18 / 12,
              color: Theme.of(context).colorScheme.outline,
            ),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
