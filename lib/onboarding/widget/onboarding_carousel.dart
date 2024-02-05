import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusgratis/gen/gen.dart';
import 'package:kampusgratis/onboarding/onboarding.dart';
import 'package:transparent_image/transparent_image.dart';

class OnboardingCarousel extends StatelessWidget {
  const OnboardingCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      _Content(
        title: 'Aksi Lebih Dari Mimpi',
        content:
            '''Jangan Hanya bermimpi, segera bertindak, dimulai dengan belajar. Orang Sukses, pasti banyak belajar''',
        svgPath: Assets.images.ilustrasi1Onboarding.path,
      ),
      _Content(
        title: 'Kesuksesan Butuh Persiapan',
        content:
            '''Rahasia untuk sukses dimulai dengan belajar. Beruntung saja tidak cukup, siapkan kemampuan, untuk mewujudkan peluang''',
        svgPath: Assets.images.ilustrasi2Onboarding.path,
      ),
      _Content(
        title: 'Pendidikan Merubah Hidup',
        content:
            '''Pendidikan berkualitas akan merubah hidup anda. Belajarlah demi masa depan mereka yang anda cintai''',
        svgPath: Assets.images.ilustrasi3Onboarding.path,
      ),
    ];

    final carouselOptions = CarouselOptions(
      height: 424,
      autoPlay: true,
      viewportFraction: 1,
      onPageChanged: (index, _) {
        context.read<OnboardingCarouselCubit>().onPageChanged(index);
      },
    );

    return SizedBox(
      height: 432,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CarouselSlider(items: items, options: carouselOptions),
          _Indicator(itemCount: items.length),
        ],
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  const _Indicator({required this.itemCount});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activeColor = theme.colorScheme.primary;
    final inactiveColor = theme.colorScheme.inversePrimary;

    return BlocBuilder<OnboardingCarouselCubit, int>(
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

class _Content extends StatelessWidget {
  const _Content({
    required this.svgPath,
    required this.title,
    required this.content,
  });

  final String svgPath;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          svgPath,
          height: 250,
          fit: BoxFit.fitHeight,
          placeholderBuilder: (context) => Image.memory(
            kTransparentImage,
            height: 250,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            height: 30 / 20,
          ),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final theme = Theme.of(context);
              final style = TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 24 / 16,
                color: theme.colorScheme.onSurfaceVariant,
              );
              final fontSize = style.fontSize ?? 16.0;
              final maxLines =
                  ((constraints.maxHeight / fontSize) * 0.75).floor();

              return Text(
                content,
                style: style,
                maxLines: maxLines,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              );
            },
          ),
        ),
      ],
    );
  }
}
