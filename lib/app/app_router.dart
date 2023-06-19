import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/auth/auth.dart';
import 'package:licenta/feature/landing/landing.dart';
import 'package:licenta/feature/locations/locations.dart';
import 'package:licenta/feature/main/main.dart';
import 'package:licenta/feature/profile/profile.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  preferRelativeImports: false,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<void>>[
    AutoRoute<void>(
      page: MainRouterPage,
      initial: true,
      children: <AutoRoute<void>>[
        AutoRoute<void>(
          page: MainPage,
          initial: true,
          guards: [AuthGuard],
          children: [
            locationFirstLevelRoute,
            profileFirstLevelRoute,
          ],
        ),
        ...profileRoutes,
        ...locationsRoutes,
      ],
    ),
    landingRoutes,
    ...authRoutes,
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}
