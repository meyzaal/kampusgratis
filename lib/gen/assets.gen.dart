/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/social-google.svg
  SvgGenImage get socialGoogle =>
      const SvgGenImage('assets/icons/social-google.svg');

  /// List of all assets
  List<SvgGenImage> get values => [socialGoogle];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/administration_accepted.svg
  SvgGenImage get administrationAccepted =>
      const SvgGenImage('assets/images/administration_accepted.svg');

  /// File path: assets/images/administration_pending.svg
  SvgGenImage get administrationPending =>
      const SvgGenImage('assets/images/administration_pending.svg');

  /// File path: assets/images/avatar-placeholder.png
  AssetGenImage get avatarPlaceholder =>
      const AssetGenImage('assets/images/avatar-placeholder.png');

  /// File path: assets/images/empty_figure.svg
  SvgGenImage get emptyFigure =>
      const SvgGenImage('assets/images/empty_figure.svg');

  /// File path: assets/images/exception_figure.svg
  SvgGenImage get exceptionFigure =>
      const SvgGenImage('assets/images/exception_figure.svg');

  /// File path: assets/images/ilustrasi_1_onboarding.svg
  SvgGenImage get ilustrasi1Onboarding =>
      const SvgGenImage('assets/images/ilustrasi_1_onboarding.svg');

  /// File path: assets/images/ilustrasi_2_onboarding.svg
  SvgGenImage get ilustrasi2Onboarding =>
      const SvgGenImage('assets/images/ilustrasi_2_onboarding.svg');

  /// File path: assets/images/ilustrasi_3_onboarding.svg
  SvgGenImage get ilustrasi3Onboarding =>
      const SvgGenImage('assets/images/ilustrasi_3_onboarding.svg');

  /// File path: assets/images/logo-kg-orange.png
  AssetGenImage get logoKgOrange =>
      const AssetGenImage('assets/images/logo-kg-orange.png');

  /// File path: assets/images/logo-kg.png
  AssetGenImage get logoKg => const AssetGenImage('assets/images/logo-kg.png');

  /// List of all assets
  List<dynamic> get values => [
        administrationAccepted,
        administrationPending,
        avatarPlaceholder,
        emptyFigure,
        exceptionFigure,
        ilustrasi1Onboarding,
        ilustrasi2Onboarding,
        ilustrasi3Onboarding,
        logoKgOrange,
        logoKg
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
