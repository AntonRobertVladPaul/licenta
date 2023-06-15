import 'package:flutter/material.dart';
import 'package:licenta/resource/style/colors.dart';

class Loader extends StatelessWidget {
  const Loader({
    super.key,
    this.padding = const EdgeInsets.all(4),
    this.isWhite = false,
    this.dimension = 50,
    this.isSuffixIcon = false,
  });

  final EdgeInsetsGeometry padding;
  final bool isWhite;
  final double dimension;
  final bool isSuffixIcon;

  @override
  Widget build(BuildContext context) {
    if (isSuffixIcon) {
      return _buildLoader();
    } else {
      return Center(
        child: _buildLoader(),
      );
    }
  }

  Widget _buildLoader() {
    return Padding(
      padding: padding,
      child: SizedBox(
        height: dimension,
        width: dimension,
        child: CircularProgressIndicator(
          color: isWhite
              ? EasyBookingColors.white.value
              : EasyBookingColors.primaryText.value,
        ),
      ),
    );
  }
}
