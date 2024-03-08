import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    required this.labelText,
    required this.decoration,
    super.key,
    this.suffixLabelWidget,
    this.baseStyle,
    this.textAlign,
    this.textAlignVertical,
    this.isFocused = false,
    this.isHovering = false,
    this.expands = false,
    this.value,
    this.onTap,
    this.readOnly = false,
  });

  final String labelText;
  final InputDecoration decoration;
  final Widget? suffixLabelWidget;
  final TextStyle? baseStyle;
  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool isFocused;
  final bool isHovering;
  final bool expands;
  final String? value;
  final VoidCallback? onTap;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const labelStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 21 / 14,
    );

    Widget labelWidget = Text(labelText, style: labelStyle);
    if (suffixLabelWidget != null) {
      final iconThemeData =
          IconThemeData(size: 20, color: theme.colorScheme.onSurfaceVariant);
      labelWidget = IntrinsicWidth(
        child: Row(
          children: [
            Flexible(child: Text(labelText, style: labelStyle)),
            const SizedBox(width: 8),
            IconTheme(data: iconThemeData, child: suffixLabelWidget!),
          ],
        ),
      );
    }

    final inputFieldWidget = InputDecorator(
      decoration: decoration,
      baseStyle: baseStyle,
      expands: expands,
      isEmpty: value == null,
      isFocused: isFocused,
      isHovering: isHovering,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: readOnly ? null : onTap,
        child: Text(
          value ?? '',
          style: theme.textTheme.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [labelWidget, const SizedBox(height: 4), inputFieldWidget],
    );
  }
}
