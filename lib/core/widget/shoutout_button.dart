import 'package:flutter/material.dart';
import 'package:licenta/core/widget/widget.dart';
import 'package:licenta/resource/resource.dart';

enum ButtonType { elevated, outlined, text }

enum ButtonStyleType { primary, light, dark }

class EasyBookingButton extends StatelessWidget {
  const EasyBookingButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonStyleType,
    this.asset,
    this.margin,
    this.isEnabled = true,
    this.isLoading = false,
    this.textStyle,
    required this.type,
    this.buttonStyle,
  }) : assert(
          type == ButtonType.elevated || buttonStyleType == null,
          'Add a style for elevated button',
        );

  final String text;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final ButtonStyleType? buttonStyleType;
  final ButtonStyle? buttonStyle;
  final ButtonType type;
  final Asset? asset;
  final bool isEnabled;
  final bool isLoading;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.elevated:
        return _buildElevatedButton(context);
      case ButtonType.outlined:
        return _buildOutlinedButton(context);
      case ButtonType.text:
        return _buildTextButton(context);
    }
  }

  Widget _buildElevatedButton(BuildContext context) {
    final style = getButtonStyle(context);
    return Container(
      margin: margin,
      child: ElevatedButton(
        style: style,
        onPressed: isEnabled ? () => onButtonPressed(context) : null,
        child: LoadableWidget(
          isWhite: buttonStyleType != ButtonStyleType.light,
          isLoading: isLoading,
          dimension: 24,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (asset != null) asset!.widget(),
              if (asset != null) const SizedBox(width: 8),
              Text(
                text,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOutlinedButton(BuildContext context) {
    return Container(
      margin: margin,
      child: OutlinedButton(
        style: buttonStyle ??
            OutlinedButton.styleFrom(
              foregroundColor: isEnabled
                  ? EasyBookingColors.primaryText.value
                  : EasyBookingColors.disabled.value,
              side: BorderSide(
                color: isEnabled
                    ? EasyBookingColors.primaryText.value
                    : EasyBookingColors.disabled.value,
              ),
            ),
        onPressed: () => isEnabled ? onButtonPressed(context) : null,
        child: LoadableWidget(
          isLoading: isLoading,
          dimension: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (asset != null)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: asset?.widget(),
                ),
              Text(
                text,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextButton(BuildContext context) {
    return Container(
      margin: margin,
      child: TextButton(
        onPressed: () => isEnabled ? onButtonPressed(context) : null,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }

  void onButtonPressed(BuildContext context) {
    if (!isLoading) {
      FocusScope.of(context).unfocus();
      onPressed();
    }
  }

  ButtonStyle? getButtonStyle(BuildContext context) {
    final themeStyle = Theme.of(context).elevatedButtonTheme.style!;
    switch (buttonStyleType!) {
      case ButtonStyleType.primary:
        return themeStyle.copyWith(
          foregroundColor:
              MaterialStateProperty.all(EasyBookingColors.primaryText.value),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return EasyBookingColors.disabled.value;
            }
            return EasyBookingColors.primary.value;
          }),
        );
      case ButtonStyleType.light:
        return themeStyle.copyWith(
          foregroundColor:
              MaterialStateProperty.all(EasyBookingColors.primaryText.value),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return EasyBookingColors.disabled.value;
            }
            return Colors.white;
          }),
        );
      case ButtonStyleType.dark:
        return themeStyle.copyWith(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return EasyBookingColors.disabled.value;
            }
            return EasyBookingColors.primaryText.value;
          }),
        );
    }
  }
}
