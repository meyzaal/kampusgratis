import 'package:flutter/material.dart';

const success = Color(0xFF0CA678);
const warning = Color(0xFFFAB005);
const danger = Color(0xFFC51810);
const info = Color(0xFF228BE6);

CustomColors lightCustomColors = const CustomColors(
  sourceSuccess: Color(0xFF0CA678),
  success: Color(0xFF006C4C),
  onSuccess: Color(0xFFFFFFFF),
  successContainer: Color(0xFF7CF9C5),
  onSuccessContainer: Color(0xFF002115),
  sourceWarning: Color(0xFFFAB005),
  warning: Color(0xFF7E5700),
  onWarning: Color(0xFFFFFFFF),
  warningContainer: Color(0xFFFFDEAC),
  onWarningContainer: Color(0xFF281900),
  sourceDanger: Color(0xFFC51810),
  danger: Color(0xFFBD100A),
  onDanger: Color(0xFFFFFFFF),
  dangerContainer: Color(0xFFFFDAD5),
  onDangerContainer: Color(0xFF410000),
  sourceInfo: Color(0xFF228BE6),
  info: Color(0xFF0061A7),
  onInfo: Color(0xFFFFFFFF),
  infoContainer: Color(0xFFD2E4FF),
  onInfoContainer: Color(0xFF001C37),
);

CustomColors darkCustomColors = const CustomColors(
  sourceSuccess: Color(0xFF0CA678),
  success: Color(0xFF5DDCAA),
  onSuccess: Color(0xFF003826),
  successContainer: Color(0xFF005139),
  onSuccessContainer: Color(0xFF7CF9C5),
  sourceWarning: Color(0xFFFAB005),
  warning: Color(0xFFFFBA37),
  onWarning: Color(0xFF432C00),
  warningContainer: Color(0xFF604100),
  onWarningContainer: Color(0xFFFFDEAC),
  sourceDanger: Color(0xFFC51810),
  danger: Color(0xFFFFB4A8),
  onDanger: Color(0xFF690001),
  dangerContainer: Color(0xFF930002),
  onDangerContainer: Color(0xFFFFDAD5),
  sourceInfo: Color(0xFF228BE6),
  info: Color(0xFFA1C9FF),
  onInfo: Color(0xFF00325A),
  infoContainer: Color(0xFF00487F),
  onInfoContainer: Color(0xFFD2E4FF),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceSuccess,
    required this.success,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,
    required this.sourceWarning,
    required this.warning,
    required this.onWarning,
    required this.warningContainer,
    required this.onWarningContainer,
    required this.sourceDanger,
    required this.danger,
    required this.onDanger,
    required this.dangerContainer,
    required this.onDangerContainer,
    required this.sourceInfo,
    required this.info,
    required this.onInfo,
    required this.infoContainer,
    required this.onInfoContainer,
  });

  final Color? sourceSuccess;
  final Color? success;
  final Color? onSuccess;
  final Color? successContainer;
  final Color? onSuccessContainer;
  final Color? sourceWarning;
  final Color? warning;
  final Color? onWarning;
  final Color? warningContainer;
  final Color? onWarningContainer;
  final Color? sourceDanger;
  final Color? danger;
  final Color? onDanger;
  final Color? dangerContainer;
  final Color? onDangerContainer;
  final Color? sourceInfo;
  final Color? info;
  final Color? onInfo;
  final Color? infoContainer;
  final Color? onInfoContainer;

  @override
  CustomColors copyWith({
    Color? sourceSuccess,
    Color? success,
    Color? onSuccess,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? sourceWarning,
    Color? warning,
    Color? onWarning,
    Color? warningContainer,
    Color? onWarningContainer,
    Color? sourceDanger,
    Color? danger,
    Color? onDanger,
    Color? dangerContainer,
    Color? onDangerContainer,
    Color? sourceInfo,
    Color? info,
    Color? onInfo,
    Color? infoContainer,
    Color? onInfoContainer,
  }) {
    return CustomColors(
      sourceSuccess: sourceSuccess ?? this.sourceSuccess,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      successContainer: successContainer ?? this.successContainer,
      onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
      sourceWarning: sourceWarning ?? this.sourceWarning,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      warningContainer: warningContainer ?? this.warningContainer,
      onWarningContainer: onWarningContainer ?? this.onWarningContainer,
      sourceDanger: sourceDanger ?? this.sourceDanger,
      danger: danger ?? this.danger,
      onDanger: onDanger ?? this.onDanger,
      dangerContainer: dangerContainer ?? this.dangerContainer,
      onDangerContainer: onDangerContainer ?? this.onDangerContainer,
      sourceInfo: sourceInfo ?? this.sourceInfo,
      info: info ?? this.info,
      onInfo: onInfo ?? this.onInfo,
      infoContainer: infoContainer ?? this.infoContainer,
      onInfoContainer: onInfoContainer ?? this.onInfoContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceSuccess: Color.lerp(sourceSuccess, other.sourceSuccess, t),
      success: Color.lerp(success, other.success, t),
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t),
      successContainer: Color.lerp(successContainer, other.successContainer, t),
      onSuccessContainer:
          Color.lerp(onSuccessContainer, other.onSuccessContainer, t),
      sourceWarning: Color.lerp(sourceWarning, other.sourceWarning, t),
      warning: Color.lerp(warning, other.warning, t),
      onWarning: Color.lerp(onWarning, other.onWarning, t),
      warningContainer: Color.lerp(warningContainer, other.warningContainer, t),
      onWarningContainer:
          Color.lerp(onWarningContainer, other.onWarningContainer, t),
      sourceDanger: Color.lerp(sourceDanger, other.sourceDanger, t),
      danger: Color.lerp(danger, other.danger, t),
      onDanger: Color.lerp(onDanger, other.onDanger, t),
      dangerContainer: Color.lerp(dangerContainer, other.dangerContainer, t),
      onDangerContainer:
          Color.lerp(onDangerContainer, other.onDangerContainer, t),
      sourceInfo: Color.lerp(sourceInfo, other.sourceInfo, t),
      info: Color.lerp(info, other.info, t),
      onInfo: Color.lerp(onInfo, other.onInfo, t),
      infoContainer: Color.lerp(infoContainer, other.infoContainer, t),
      onInfoContainer: Color.lerp(onInfoContainer, other.onInfoContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith();
  }
}
