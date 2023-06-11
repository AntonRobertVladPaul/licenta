import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:licenta/resource/style/colors.dart';

class DashedContainer extends StatelessWidget {
  const DashedContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.color,
    this.borderType,
    this.dashPattern = const [4, 4],
  });

  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final BorderType? borderType;
  final List<double> dashPattern;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: DottedBorder(
        borderType: borderType ?? BorderType.RRect,
        dashPattern: dashPattern,
        radius: const Radius.circular(8),
        padding: padding ?? EdgeInsets.zero,
        color: color ?? EasyBookingColors.disabled.value,
        child: child,
      ),
    );
  }
}
