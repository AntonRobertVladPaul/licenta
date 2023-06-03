// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';
import 'package:licenta/core/widget/widget.dart';

class LoadableWidget extends StatelessWidget {
  const LoadableWidget({
    super.key,
    required this.isLoading,
    required this.child,
    this.padding = const EdgeInsets.all(4),
    this.isWhite = false,
    this.dimension = 50,
    this.isSuffixIcon = false,
  });

  final bool isLoading;
  final Widget child;
  final bool isWhite;
  final double dimension;
  final bool isSuffixIcon;

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      reverseDuration: const Duration(milliseconds: 50),
      layoutBuilder: (Widget? currentChild, List<Widget> previousChildren) {
        return currentChild!;
      },
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      child: isLoading ? _buildLoader() : child,
    );
  }

  Widget _buildLoader() {
    return Loader(
      padding: padding,
      isWhite: isWhite,
      dimension: dimension,
      isSuffixIcon: isSuffixIcon,
    );
  }
}
