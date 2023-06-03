import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/resource/style/app_theme.dart';

class EasyBookingApp extends StatelessWidget {
  const EasyBookingApp({super.key, required AppRouter router})
      : _router = router;

  final AppRouter _router;

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: MaterialApp.router(
          routerDelegate: _router.delegate(),
          routeInformationParser: _router.defaultRouteParser(),
          theme: appTheme,
        ),
      ),
    );
  }
}
