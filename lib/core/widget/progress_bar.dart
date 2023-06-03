import 'dart:math';

import 'package:flutter/material.dart';
import 'package:licenta/resource/style/colors.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.currentStep,
    this.maximumDisplayedSteps = 5,
    this.maximumSteps = 5,
    this.stepType = ProgressStepType.primary,
    this.stepPadding,
    this.isExpanded = false,
  });

  final int currentStep;
  final int maximumDisplayedSteps;
  final int maximumSteps;
  final ProgressStepType stepType;
  final double? stepPadding;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final stepsNumber = min(maximumDisplayedSteps, maximumSteps);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(stepsNumber, (index) {
        if (isExpanded) {
          return Expanded(
            child: _buildStep(index, stepsNumber),
          );
        } else {
          return _buildStep(index, stepsNumber);
        }
      }),
    );
  }

  Widget _buildStep(int index, int stepsNumber) {
    return _ProgressStep(
      isCurrent: index == displayedCurrentStep,
      type: stepType,
      stepPadding: stepPadding,
      isLastStep: index == stepsNumber - 1,
    );
  }

  int get displayedCurrentStep {
    if (maximumDisplayedSteps >= maximumSteps) {
      return currentStep;
    } else {
      if (currentStep == maximumSteps - 1) {
        return maximumDisplayedSteps - 1;
      } else if (currentStep >= maximumDisplayedSteps - 2) {
        return maximumDisplayedSteps - 2;
      }
    }
    return currentStep;
  }
}

class ProgressStepDefinition {
  const ProgressStepDefinition(
    this.currentColor,
    this.notCurrentColor,
    this.currentSize,
    this.notCurrentSize,
  );

  final EasyBookingColors currentColor;
  final EasyBookingColors notCurrentColor;

  final Size? currentSize;
  final Size? notCurrentSize;
}

enum ProgressStepType {
  primary(
    ProgressStepDefinition(
      EasyBookingColors.primary,
      EasyBookingColors.lightGrey,
      Size(32, 8),
      Size(8, 8),
    ),
  ),
  white(
    ProgressStepDefinition(
      EasyBookingColors.white,
      EasyBookingColors.lightGrey40,
      Size(37, 2),
      Size(37, 2),
    ),
  ),
  primaryText(
    ProgressStepDefinition(
      EasyBookingColors.primaryText,
      EasyBookingColors.lightGrey40,
      null,
      null,
    ),
  );

  const ProgressStepType(this.definition);

  final ProgressStepDefinition definition;
}

class _ProgressStep extends StatelessWidget {
  const _ProgressStep({
    required this.isCurrent,
    required this.type,
    this.stepPadding,
    required this.isLastStep,
  });

  final ProgressStepType type;
  final bool isCurrent;
  final bool isLastStep;
  final double? stepPadding;

  @override
  Widget build(BuildContext context) {
    final color = isCurrent
        ? type.definition.currentColor
        : type.definition.notCurrentColor;
    final size = isCurrent
        ? type.definition.currentSize
        : type.definition.notCurrentSize;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      margin: isLastStep ? null : EdgeInsets.only(right: stepPadding ?? 8),
      color: color.value,
      width: size?.width ?? double.infinity,
      height: size?.height ?? 2,
    );
  }
}
