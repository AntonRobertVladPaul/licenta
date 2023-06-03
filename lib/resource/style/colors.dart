import 'package:flutter/material.dart';

enum EasyBookingColors {
  primary(Color(0xFF00CEE0)),
  secondary(Color(0xFFCC1480)),
  primaryText(Color(0xFF0F172A)),
  secondaryText(Color(0xFF64748B)),
  disabled(Color(0xFF94A3B8)),
  lightGrey(Color(0xFFCBD5E1)),
  lightGrey40(Color(0x66CBD5E1)),
  lighterGrey(Color(0xFFF1F5F9)),
  iosDatePickerColor(Color(0xFFEEEFF0)),
  error(Color(0xFFFF6868)),
  warning(Color(0xFFFFB13C)),
  info(Color(0xFF41C6FF)),
  success(Color(0xFF00DAB3)),
  white(Colors.white),
  activeShoutOut(Color(0xFF475569)),
  inactiveShoutOut(Color(0xFFE2E8F0)),
  joinShoutOutBackground(Color(0xFFFFFAF2)),
  walletBackground(Color(0xFFE5FFFF)),
  balanceCardShadow(Color(0x3300B2A5));

  const EasyBookingColors(this.value);

  final Color value;
}
