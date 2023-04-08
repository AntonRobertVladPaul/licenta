import 'package:flutter/material.dart';
import 'package:licenta/style/style.dart';

final appTheme = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
  ),
  scaffoldBackgroundColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: EasyBookingColors.primaryText.value,
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      textStyle: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
      minimumSize: const Size.fromHeight(56),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: EasyBookingColors.primaryText.value,
      elevation: 0,
      textStyle: textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      ),
      minimumSize: const Size.fromHeight(40),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: EasyBookingColors.primaryText.value,
      minimumSize: const Size.fromHeight(56),
      shape: const RoundedRectangleBorder(),
      side: BorderSide(
        color: EasyBookingColors.primaryText.value,
      ),
      textStyle: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: EasyBookingColors.primary.value),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  textTheme: textTheme,
  dividerTheme: DividerThemeData(
    thickness: 1,
    color: EasyBookingColors.inactiveShoutOut.value,
  ),
);
