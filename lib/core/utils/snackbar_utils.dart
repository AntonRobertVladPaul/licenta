import 'package:flutter/material.dart';
import 'package:licenta/resource/resource.dart';

void showSnackBar(BuildContext context, String message, {Widget? icon}) {
  ScaffoldMessenger.of(context).showSnackBar(
    _buildSnackBar(context, message, icon: icon),
  );
}

SnackBar _buildSnackBar(BuildContext context, String message, {Widget? icon}) {
  final hasBottomSafeArea = View.of(context).viewPadding.bottom > 0;
  return SnackBar(
    backgroundColor: EasyBookingColors.primaryText.value,
    behavior: SnackBarBehavior.floating,
    shape: const Border(),
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: hasBottomSafeArea ? 0 : 16,
    ),
    content: Row(
      children: [
        if (icon != null)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: icon,
          ),
        Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
              ),
        ),
      ],
    ),
  );
}
