// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    LandingRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const LandingPage(),
      );
    },
    LoginOrSignUpRoute.name: (routeData) {
      final args = routeData.argsAs<LoginOrSignUpRouteArgs>();
      return CustomPage<AutoRoute<void>>(
        routeData: routeData,
        child: LoginOrSignUpPage(
          key: args.key,
          type: args.type,
        ),
        customRouteBuilder: cupertinoModalBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    EnterPasswordRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const EnterPasswordPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          MainRoute.name,
          path: '/',
          guards: [authGuard],
        ),
        RouteConfig(
          LandingRoute.name,
          path: '/',
        ),
        RouteConfig(
          LoginOrSignUpRoute.name,
          path: '/login-or-sign-up-page',
          children: [
            RouteConfig(
              AuthRoute.name,
              path: '',
              parent: LoginOrSignUpRoute.name,
            ),
            RouteConfig(
              SignUpRoute.name,
              path: 'sign-up-page',
              parent: LoginOrSignUpRoute.name,
            ),
            RouteConfig(
              EnterPasswordRoute.name,
              path: 'enter-password-page',
              parent: LoginOrSignUpRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [LoginOrSignUpPage]
class LoginOrSignUpRoute extends PageRouteInfo<LoginOrSignUpRouteArgs> {
  LoginOrSignUpRoute({
    Key? key,
    required AccountType type,
    List<PageRouteInfo>? children,
  }) : super(
          LoginOrSignUpRoute.name,
          path: '/login-or-sign-up-page',
          args: LoginOrSignUpRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginOrSignUpRoute';
}

class LoginOrSignUpRouteArgs {
  const LoginOrSignUpRouteArgs({
    this.key,
    required this.type,
  });

  final Key? key;

  final AccountType type;

  @override
  String toString() {
    return 'LoginOrSignUpRouteArgs{key: $key, type: $type}';
  }
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute()
      : super(
          AuthRoute.name,
          path: '',
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: 'sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [EnterPasswordPage]
class EnterPasswordRoute extends PageRouteInfo<void> {
  const EnterPasswordRoute()
      : super(
          EnterPasswordRoute.name,
          path: 'enter-password-page',
        );

  static const String name = 'EnterPasswordRoute';
}
