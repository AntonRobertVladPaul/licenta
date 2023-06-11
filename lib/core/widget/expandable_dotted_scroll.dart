import 'package:flutter/material.dart';

class ExpandableDottedScroll extends StatelessWidget {
  const ExpandableDottedScroll({
    super.key,
    required this.child,
    this.controller,
  });

  final Widget child;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          controller: controller,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}
