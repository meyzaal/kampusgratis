import 'package:banner_repository/banner_repository.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/gen/gen.dart';
import 'package:kampusgratis/shared/shared.dart';

class HomeBannerCarousel extends StatelessWidget {
  const HomeBannerCarousel({required this.banners, super.key});

  final List<Banner> banners;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      sliver: SliverList.list(
        children: [
          Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            clipBehavior: Clip.hardEdge,
            child: CarouselSlider(
              items: banners.map((banner) => banner.image).toList(),
              options: CarouselOptions(
                autoPlay: banners.length > 1,
                viewportFraction: 1,
                onPageChanged: (index, _) {
                  context.read<CarouselCubit>().onPageChanged(index);
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          Center(child: CarouselIndicator(itemCount: banners.length)),
        ],
      ),
    );
  }
}

extension on Banner {
  Widget get image => (url ?? '').isNotEmpty
      ? CachedNetworkImage(
          imageUrl: url!,
          fit: BoxFit.cover,
          width: double.infinity,
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator.adaptive(value: progress.progress),
          ),
        )
      : Assets.images.logoKg.image(
          fit: BoxFit.contain,
          width: double.infinity,
        );
}
