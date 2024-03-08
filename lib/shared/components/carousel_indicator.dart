import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/shared/shared.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({required this.itemCount, super.key});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activeColor = theme.colorScheme.primary;
    final inactiveColor = theme.colorScheme.inversePrimary;

    return BlocBuilder<CarouselCubit, int>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, activeIndex) {
        final items = List.generate(itemCount, (index) {
          final active = index == activeIndex;
          final dimension = active ? 8.0 : 6.0;

          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: dimension,
            height: dimension,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: active ? activeColor : inactiveColor,
            ),
          );
        });

        return Wrap(
          spacing: 8,
          children: items,
        );
      },
    );
  }
}
