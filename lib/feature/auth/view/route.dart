import 'package:auto_route/auto_route.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/feature/auth/view/view.dart';

const authRoutes = [
  CustomRoute<AutoRoute<void>>(
    page: LoginOrSignUpPage,
    customRouteBuilder: cupertinoModalBuilder,
    children: <AutoRoute<void>>[
      AutoRoute(page: AuthPage, initial: true),
      AutoRoute(page: SignUpPage),
      AutoRoute(page: EnterPasswordPage),
    ],
  ),
];
