import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const EdgeInsets _defaultInsetPadding =
    EdgeInsets.symmetric(horizontal: 40, vertical: 24);

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    this.semanticLabel,
    this.icon,
    this.title,
    this.content,
    this.iconColor,
    this.titleTextStyle,
    this.contentTextStyle,
    this.actions,
    this.actionsGap = 8.0,
    this.actionsDirection = Axis.vertical,
    this.actionsMainAxisAlignment = MainAxisAlignment.center,
    this.actionsCrossAxisAlignment = CrossAxisAlignment.stretch,
    this.scrollable = false,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.insetPadding = _defaultInsetPadding,
    this.clipBehavior = Clip.none,
    this.shape,
    this.alignment,
  });

  final String? semanticLabel;
  final Widget? icon;
  final Widget? title;
  final Widget? content;
  final Color? iconColor;
  final TextStyle? titleTextStyle;
  final TextStyle? contentTextStyle;
  final List<Widget>? actions;
  final double actionsGap;
  final Axis actionsDirection;
  final MainAxisAlignment actionsMainAxisAlignment;
  final CrossAxisAlignment actionsCrossAxisAlignment;
  final bool scrollable;
  final Color? backgroundColor;
  final double? elevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final EdgeInsets insetPadding;
  final Clip clipBehavior;
  final ShapeBorder? shape;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dialogTheme = DialogTheme.of(context);

    final label = semanticLabel;

    Widget? iconWidget;
    Widget? titleWidget;
    Widget? contentWidget;
    Widget? actionsWidget;

    if (icon != null) {
      final belowIsTitle = title != null;
      final belowIsContent = !belowIsTitle && content != null;
      final iconPadding = EdgeInsets.only(
        left: 24,
        top: 24,
        right: 24,
        bottom: belowIsTitle
            ? 16.0
            : belowIsContent
                ? 0.0
                : 24.0,
      );
      iconWidget = Padding(
        padding: iconPadding,
        child: IconTheme(
          data: IconThemeData(
            color: iconColor ?? dialogTheme.iconColor,
            size: 80,
          ),
          child: icon!,
        ),
      );
    }

    if (title != null) {
      final titlePadding = EdgeInsets.only(
        left: 24,
        top: icon == null ? 24.0 : 0.0,
        right: 24,
        bottom: content == null ? 20.0 : 0.0,
      );
      final defaultTitleTextStyle = GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
      titleWidget = Padding(
        padding: titlePadding,
        child: DefaultTextStyle(
          style: titleTextStyle ??
              dialogTheme.titleTextStyle ??
              defaultTitleTextStyle,
          textAlign: icon == null ? TextAlign.start : TextAlign.center,
          child: Semantics(
            // For iOS platform, the focus always lands on the title.
            // Set nameRoute to false to avoid title being announce twice.
            namesRoute: label == null && theme.platform != TargetPlatform.iOS,
            container: true,
            child: title,
          ),
        ),
      );
    }

    if (content != null) {
      const contentPadding = EdgeInsets.only(
        left: 24,
        top: 16,
        right: 24,
        bottom: 24,
      );
      final defaultContentTextStyle = GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      );
      contentWidget = Padding(
        padding: contentPadding,
        child: DefaultTextStyle(
          style: contentTextStyle ??
              dialogTheme.contentTextStyle ??
              defaultContentTextStyle,
          child: Semantics(
            container: true,
            child: content,
          ),
        ),
      );
    }

    if (actions != null) {
      const actionsPadding = EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      );
      final actionItems = <Widget>[];
      for (var i = 0; i < actions!.length; i++) {
        actionItems.add(actions![i]);

        if (i < actions!.length - 1) {
          actionItems.add(SizedBox(height: actionsGap));
        }
      }

      actionsWidget = Padding(
        padding: dialogTheme.actionsPadding ?? actionsPadding,
        child: Column(
          mainAxisAlignment: actionsMainAxisAlignment,
          crossAxisAlignment: actionsCrossAxisAlignment,
          mainAxisSize: MainAxisSize.min,
          children: actionItems,
        ),
      );
    }

    List<Widget> columnChildren;
    if (scrollable) {
      columnChildren = <Widget>[
        if (title != null || content != null)
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  if (icon != null) iconWidget!,
                  if (title != null) titleWidget!,
                  if (content != null) contentWidget!,
                ],
              ),
            ),
          ),
        if (actions != null) actionsWidget!,
      ];
    } else {
      columnChildren = <Widget>[
        if (icon != null) iconWidget!,
        if (title != null) titleWidget!,
        if (content != null) Flexible(child: contentWidget!),
        if (actions != null) actionsWidget!,
      ];
    }

    Widget dialogChild = IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: columnChildren,
      ),
    );

    if (label != null) {
      dialogChild = Semantics(
        scopesRoute: true,
        explicitChildNodes: true,
        namesRoute: true,
        label: label,
        child: dialogChild,
      );
    }

    final defaultSurvaceTintColor = theme.scaffoldBackgroundColor;

    return Dialog(
      backgroundColor: backgroundColor,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor ?? defaultSurvaceTintColor,
      insetPadding: insetPadding,
      clipBehavior: clipBehavior,
      shape: shape,
      alignment: alignment,
      child: dialogChild,
    );
  }
}
