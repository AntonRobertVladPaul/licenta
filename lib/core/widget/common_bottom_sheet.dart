import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/resource/style/style.dart';

class CommonBottomSheet extends StatelessWidget {
  const CommonBottomSheet({
    super.key,
    required this.title,
    this.image,
    this.bodyText,
    this.mainButtonText,
    this.secondaryButtonText,
    this.moreInfoText,
    this.onMainButtonPressed,
    this.onSecondaryButtonPressed,
    this.bodyWidget,
    this.isMainButtonLoading = false,
    this.mainButton,
    this.secondaryButton,
  });

  final String title;
  final Widget? image;
  final Widget? bodyWidget;
  final String? bodyText;
  final String? mainButtonText;
  final String? secondaryButtonText;
  final Widget? moreInfoText;
  final VoidCallback? onMainButtonPressed;
  final VoidCallback? onSecondaryButtonPressed;
  final Widget? mainButton;
  final Widget? secondaryButton;
  final bool isMainButtonLoading;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 40, bottom: 24, left: 24, right: 24),
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildImage(),
              _buildTitle(context),
              _buildBody(context),
              _buildMainButton(context),
              _buildSecondaryButton(context),
              _buildMoreInfoText()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return image != null
        ? Container(margin: const EdgeInsets.only(bottom: 16), child: image)
        : const SizedBox.shrink();
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (bodyWidget != null) {
      return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: bodyWidget,
      );
    } else if (bodyText != null) {
      return Padding(
        padding: const EdgeInsets.only(top: 16, left: 4),
        child: Text(
          bodyText!,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: EasyBookingColors.primaryText.value,
              ),
          textAlign: TextAlign.center,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildMainButton(BuildContext context) =>
      mainButtonText != null || mainButton != null
          ? Padding(
              padding: const EdgeInsets.only(top: 32),
              child: mainButton ??
                  EasyBookingButton(
                    buttonStyleType: ButtonStyleType.dark,
                    isLoading: isMainButtonLoading,
                    text: mainButtonText!,
                    onPressed: onMainButtonPressed!,
                    type: ButtonType.elevated,
                  ),
            )
          : const SizedBox.shrink();

  Widget _buildSecondaryButton(BuildContext context) {
    if (secondaryButtonText != null || secondaryButton != null) {
      return Padding(
        padding: const EdgeInsets.only(top: 12),
        child: secondaryButton ??
            EasyBookingButton(
              onPressed: onSecondaryButtonPressed ?? () => context.popRoute(),
              text: secondaryButtonText!,
              type: ButtonType.text,
            ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildMoreInfoText() => moreInfoText != null
      ? Padding(
          padding: const EdgeInsets.only(top: 32),
          child: moreInfoText,
        )
      : const SizedBox.shrink();
}
