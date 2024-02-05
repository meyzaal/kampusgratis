import 'package:flutter/material.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

const _kIconSize = 20.0;
const _kAnimationDuration = Duration(milliseconds: 300);

class PasswordInputField extends StatefulWidget {
  const PasswordInputField({
    required this.labelText,
    required this.hintText,
    super.key,
    this.errorText,
    this.helperText,
    this.helperMaxLines,
    this.suffixLabelWidget,
    this.autofocus = false,
    this.onChanged,
  });

  final String labelText;
  final String hintText;
  final String? errorText;
  final String? helperText;
  final int? helperMaxLines;
  final Widget? suffixLabelWidget;
  final bool autofocus;
  final ValueChanged<String>? onChanged;

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: widget.labelText,
      suffixLabelWidget: widget.suffixLabelWidget,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          iconSize: _kIconSize,
          onPressed: _onButtonPressed,
          icon: AnimatedSwitcher(
            duration: _kAnimationDuration,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: PhosphorIcon(
              _hidePassword
                  ? PhosphorIconsRegular.eyeClosed
                  : PhosphorIconsRegular.eye,
              key: ValueKey<bool>(_hidePassword),
            ),
          ),
        ),
        hintText: widget.hintText,
        errorText: widget.errorText,
        helperText: widget.helperText,
        helperMaxLines: widget.helperMaxLines,
      ),
      autofocus: widget.autofocus,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      obscureText: _hidePassword,
      onChanged: widget.onChanged,
    );
  }

  void _onButtonPressed() {
    setState(() => _hidePassword = !_hidePassword);
  }
}
