import 'package:flutter/material.dart';
import 'package:licenta/resource/style/style.dart';

TextTheme textTheme = const TextTheme(
  displayLarge: TextStyle(
    fontSize: 55,
    fontWeight: FontWeight.w600,
    height: 1.03,
  ),
  displayMedium: TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    height: 1.16,
  ),
  headlineLarge: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    height: 1.25,
  ),
  headlineSmall: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.33,
  ),
  titleLarge: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.3,
  ),
  titleMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ),
  labelLarge: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.43,
  ),
  labelMedium: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.33,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33,
  ),
).apply(
  fontFamily: 'Poppins',
  displayColor: EasyBookingColors.primaryText.value,
  bodyColor: EasyBookingColors.primaryText.value,
);
