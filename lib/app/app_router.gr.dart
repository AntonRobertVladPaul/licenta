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
    MainRouterRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: WrappedRoute(child: const MainRouterPage()),
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
    MainRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    AddLocationRoute.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const AddLocationPage(),
        customRouteBuilder: cupertinoModalBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LocationsRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const LocationsPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const ProfilePage(),
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
          MainRouterRoute.name,
          path: '/',
          children: [
            RouteConfig(
              MainRoute.name,
              path: '',
              parent: MainRouterRoute.name,
              guards: [authGuard],
              children: [
                RouteConfig(
                  LocationsRoute.name,
                  path: 'locations-page',
                  parent: MainRoute.name,
                ),
                RouteConfig(
                  ProfileRoute.name,
                  path: 'profile-page',
                  parent: MainRoute.name,
                ),
              ],
            ),
            RouteConfig(
              AddLocationRoute.name,
              path: 'add-location-page',
              parent: MainRouterRoute.name,
            ),
          ],
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
/// [MainRouterPage]
class MainRouterRoute extends PageRouteInfo<void> {
  const MainRouterRoute({List<PageRouteInfo>? children})
      : super(
          MainRouterRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRouterRoute';
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
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [AddLocationPage]
class AddLocationRoute extends PageRouteInfo<void> {
  const AddLocationRoute()
      : super(
          AddLocationRoute.name,
          path: 'add-location-page',
        );

  static const String name = 'AddLocationRoute';
}

/// generated route for
/// [LocationsPage]
class LocationsRoute extends PageRouteInfo<void> {
  const LocationsRoute()
      : super(
          LocationsRoute.name,
          path: 'locations-page',
        );

  static const String name = 'LocationsRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
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
