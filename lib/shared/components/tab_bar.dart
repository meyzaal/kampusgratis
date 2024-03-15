import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const double _kTabHeight = 46;

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    required this.tabs,
    super.key,
    this.backgroundColor,
    this.controller,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 4.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.onTap,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
    this.tabAlignment,
    this.dividerHeight,
  }) : _isPrimary = true;

  const CustomTabBar.secondary({
    required this.tabs,
    super.key,
    this.controller,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.dividerColor,
    this.dividerHeight,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.onTap,
    this.physics,
    this.splashFactory,
    this.splashBorderRadius,
    this.tabAlignment,
    this.backgroundColor,
  }) : _isPrimary = false;

  final Color? backgroundColor;
  final List<Widget> tabs;
  final TabController? controller;
  final bool isScrollable;
  final EdgeInsetsGeometry? padding;
  final Color? indicatorColor;
  final bool automaticIndicatorColorAdjustment;
  final double indicatorWeight;
  final EdgeInsetsGeometry indicatorPadding;
  final Decoration? indicator;
  final TabBarIndicatorSize? indicatorSize;
  final Color? dividerColor;
  final double? dividerHeight;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? labelPadding;
  final Color? unselectedLabelColor;
  final TextStyle? unselectedLabelStyle;
  final DragStartBehavior dragStartBehavior;
  final MaterialStateProperty<Color?>? overlayColor;
  final MouseCursor? mouseCursor;
  final bool? enableFeedback;
  final ValueChanged<int>? onTap;
  final ScrollPhysics? physics;
  final InteractiveInkFeatureFactory? splashFactory;
  final BorderRadius? splashBorderRadius;
  final TabAlignment? tabAlignment;

  final bool _isPrimary;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      child: _isPrimary
          ? TabBar(
              tabs: tabs,
              controller: controller,
              isScrollable: isScrollable,
              padding: padding,
              indicatorColor: indicatorColor,
              automaticIndicatorColorAdjustment:
                  automaticIndicatorColorAdjustment,
              indicatorWeight: indicatorWeight,
              indicatorPadding: indicatorPadding,
              indicator: indicator,
              indicatorSize: indicatorSize,
              dividerColor: dividerColor,
              dividerHeight: dividerHeight,
              labelColor: labelColor,
              labelStyle: labelStyle,
              labelPadding: labelPadding,
              unselectedLabelColor: unselectedLabelColor,
              unselectedLabelStyle: unselectedLabelStyle,
              dragStartBehavior: dragStartBehavior,
              overlayColor: overlayColor,
              mouseCursor: mouseCursor,
              enableFeedback: enableFeedback,
              onTap: onTap,
              physics: physics,
              splashFactory: splashFactory,
              splashBorderRadius: splashBorderRadius,
              tabAlignment: tabAlignment,
            )
          : TabBar.secondary(
              tabs: tabs,
              controller: controller,
              isScrollable: isScrollable,
              padding: padding,
              indicatorColor: indicatorColor,
              automaticIndicatorColorAdjustment:
                  automaticIndicatorColorAdjustment,
              indicatorWeight: indicatorWeight,
              indicatorPadding: indicatorPadding,
              indicator: indicator,
              indicatorSize: indicatorSize,
              dividerColor: dividerColor,
              dividerHeight: dividerHeight,
              labelColor: labelColor,
              labelStyle: labelStyle,
              labelPadding: labelPadding,
              unselectedLabelColor: unselectedLabelColor,
              unselectedLabelStyle: unselectedLabelStyle,
              dragStartBehavior: dragStartBehavior,
              overlayColor: overlayColor,
              mouseCursor: mouseCursor,
              enableFeedback: enableFeedback,
              onTap: onTap,
              physics: physics,
              splashFactory: splashFactory,
              splashBorderRadius: splashBorderRadius,
              tabAlignment: tabAlignment,
            ),
    );
  }

  @override
  Size get preferredSize {
    var maxHeight = _kTabHeight;
    for (final item in tabs) {
      if (item is PreferredSizeWidget) {
        final itemHeight = item.preferredSize.height;
        maxHeight = math.max(itemHeight, maxHeight);
      }
    }
    return Size.fromHeight(maxHeight + indicatorWeight);
  }
}
