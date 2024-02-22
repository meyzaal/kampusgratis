import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kampusgratis/gen/gen.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({super.key, this.radius, this.avatarUrl, this.child});

  final double? radius;
  final String? avatarUrl;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    ImageProvider? foregroundImage;
    if ((avatarUrl ?? '').isNotEmpty) {
      foregroundImage = CachedNetworkImageProvider(avatarUrl!);
    }

    return CircleAvatar(
      radius: radius,
      backgroundImage:
          child != null ? null : Assets.images.avatarPlaceholder.provider(),
      foregroundImage: child != null ? null : foregroundImage,
      child: child,
    );
  }
}
