import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:licenta/resource/resource.dart';

class OutlinedTextField extends StatefulWidget {
  const OutlinedTextField({
    super.key,
    this.controller,
    this.label,
    this.labelBehaviour = FloatingLabelBehavior.auto,
    this.hint,
    this.onEditingComplete,
    this.onChanged,
    this.focusNode,
    this.validator,
    this.textInputAction,
    this.keyboardType,
    this.isPassword = false,
    this.isPhone = false,
    this.errorMessage,
    this.enabled = true,
    this.initialValue,
    this.maxLines = 1,
    this.minLines,
    this.readOnly = false,
    this.onTap,
    this.contentPadding,
    this.inputFormat,
    this.suffixIcon,
    this.textColor,
    this.textCapitalization,
    this.alwaysDisabledFocusNode = false,
    this.onSuffixIconTapped,
    this.textAlign,
    this.prefixIcon,
    this.autofocus = false,
  }) : assert(
          minLines == null || maxLines == null || (minLines <= maxLines),
          'Incompatible minLines and maxLines values',
        );

  final TextEditingController? controller;
  final String? label;
  final FloatingLabelBehavior labelBehaviour;
  final String? hint;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool isPassword;
  final bool isPhone;
  final String? errorMessage;
  final bool enabled;
  final String? initialValue;
  final int? maxLines;
  final int? minLines;
  final bool readOnly;
  final GestureTapCallback? onTap;
  final EdgeInsets? contentPadding;
  final String? inputFormat;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final GestureTapCallback? onSuffixIconTapped;
  final Color? textColor;
  final TextCapitalization? textCapitalization;
  final bool alwaysDisabledFocusNode;
  final TextAlign? textAlign;
  final bool autofocus;

  @override
  State<OutlinedTextField> createState() => _OutlinedTextFieldState();
}

class _OutlinedTextFieldState extends State<OutlinedTextField> {
  bool isPasswordShown = false;
  bool isFocused = false;
  String? errorMessage;
  String? inputFormat;

  late FocusNode focusNode;

  @override
  void didUpdateWidget(covariant OutlinedTextField oldWidget) {
    setState(() {
      errorMessage = widget.errorMessage;
      _updateMask();
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        setState(() {
          _updateMask();
          _applyMaskOnInitialValue();
        });
      },
    );

    focusNode = widget.focusNode ?? FocusNode();

    focusNode.addListener(_focusListener);
  }

  @override
  Widget build(BuildContext context) {
    final color = getMainColor();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedContainer(
          height: widget.maxLines == 1 ? 56 : null,
          decoration: BoxDecoration(
            color: widget.enabled
                ? Colors.transparent
                : EasyBookingColors.lighterGrey.value,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(
              color: getBorderColor(),
            ),
          ),
          duration: const Duration(milliseconds: 100),
          child: Row(
            children: [
              if (widget.contentPadding == null) const SizedBox(width: 8),
              if (widget.isPhone)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    '+1',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: errorMessage == null
                              ? EasyBookingColors.primaryText.value
                              : EasyBookingColors.error.value,
                        ),
                  ),
                ),
              if (widget.contentPadding == null) const SizedBox(width: 8),
              Expanded(
                child: Center(
                  child: TextFormField(
                    textAlign: widget.textAlign ?? TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    readOnly: widget.readOnly,
                    onTap: widget.onTap,
                    enabled: widget.enabled,
                    cursorHeight: 16,
                    controller: widget.controller,
                    textInputAction: widget.textInputAction,
                    focusNode: widget.alwaysDisabledFocusNode
                        ? AlwaysDisabledFocusNode()
                        : focusNode,
                    cursorColor: EasyBookingColors.primaryText.value,
                    obscureText: widget.isPassword && !isPasswordShown,
                    maxLines: widget.maxLines,
                    minLines: widget.minLines,
                    style: widget.enabled
                        ? Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: widget.textColor ??
                                  EasyBookingColors.primaryText.value,
                            )
                        : Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: EasyBookingColors.secondaryText.value,
                            ),
                    onEditingComplete: widget.onEditingComplete,
                    textCapitalization:
                        widget.textCapitalization ?? TextCapitalization.none,
                    onChanged: widget.onChanged,
                    inputFormatters: inputFormat != null ? [getMask()] : null,
                    validator: (text) {
                      if (widget.validator != null) {
                        setState(() => errorMessage = widget.validator!(text));
                      }
                      if (errorMessage != null) {
                        FocusScope.of(context).requestFocus(focusNode);
                      }
                      return errorMessage;
                    },
                    keyboardType: widget.isPhone
                        ? TextInputType.phone
                        : widget.keyboardType,
                    autofocus: widget.autofocus,
                    decoration: InputDecoration(
                      contentPadding: widget.contentPadding,
                      isDense: true,
                      errorStyle: const TextStyle(fontSize: 0),
                      prefixIcon: widget.prefixIcon,
                      suffixIcon: widget.isPassword
                          ? _buildPasswordIcon()
                          : _buildSuffixIcon(),
                      suffixIconConstraints:
                          const BoxConstraints(minHeight: 24, minWidth: 24),
                      labelStyle:
                          Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: color,
                              ),
                      hintStyle:
                          Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: color,
                              ),
                      hintText: widget.hint,
                      floatingLabelStyle:
                          Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: color,
                              ),
                      border: InputBorder.none,
                      floatingLabelBehavior: widget.labelBehaviour,
                      labelText: widget.label,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (errorMessage != null && errorMessage!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              errorMessage!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: EasyBookingColors.error.value,
                  ),
            ),
          ),
      ],
    );
  }

  Widget _buildSuffixIcon() {
    return GestureDetector(
      onTap: widget.onSuffixIconTapped,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: widget.suffixIcon,
      ),
    );
  }

  IconButton _buildPasswordIcon() {
    return IconButton(
      icon: isPasswordShown
          ? Asset.eyeClosed.widget(
              color: EasyBookingColors.disabled.value,
            )
          : Asset.eye.widget(
              color: EasyBookingColors.disabled.value,
            ),
      onPressed: () {
        setState(() {
          isPasswordShown = !isPasswordShown;
        });
      },
    );
  }

  @override
  void dispose() {
    focusNode.removeListener(_focusListener);

    // We should manually dispose only if we created the focus node here
    // Otherwise the caller is responsible of disposing the focus node
    if (widget.focusNode == null) {
      focusNode.dispose();
    }
    super.dispose();
  }

  Color getMainColor() {
    return errorMessage == null
        ? EasyBookingColors.disabled.value
        : EasyBookingColors.error.value;
  }

  Color getBorderColor() {
    if (errorMessage != null) {
      return EasyBookingColors.error.value;
    }

    if (isFocused) {
      return EasyBookingColors.primaryText.value;
    }

    return EasyBookingColors.disabled.value;
  }

  void _focusListener() {
    setState(() {
      isFocused = focusNode.hasFocus;
    });
  }

  void _updateMask() {
    if (widget.isPhone) {
      inputFormat = '(###) ### ####';
    } else {
      inputFormat = widget.inputFormat;
    }
  }

  void _applyMaskOnInitialValue() {
    if (widget.initialValue != null && inputFormat != null) {
      final maskedInitialValue = MaskedInputFormatter(inputFormat!)
          .applyMask(widget.initialValue!)
          .text;

      widget.controller?.text = maskedInitialValue;
    } else if (widget.initialValue != null) {
      widget.controller?.text = widget.initialValue!;
    }
  }

  MaskedInputFormatter getMask() {
    return MaskedInputFormatter(
      inputFormat!,
      allowedCharMatcher: RegExp('[0-9]+'),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
