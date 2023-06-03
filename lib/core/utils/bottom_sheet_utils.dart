import 'package:flutter/material.dart';

Future<void> showCommonBottomSheet(
  BuildContext context,
  Widget widgetToDisplay, {
  bool canBeClosed = true,
  bool useRootNavigator = false,
}) async =>
    showModalBottomSheet<Widget>(
      isDismissible: canBeClosed,
      enableDrag: canBeClosed,
      context: context,
      isScrollControlled: true,
      useRootNavigator: useRootNavigator,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (_) => widgetToDisplay,
    );
