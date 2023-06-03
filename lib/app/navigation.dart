import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart'
    hide ModalBottomSheetRoute;

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required SessionHandler handler}) : _handler = handler;

  final SessionHandler _handler;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (await _handler.isAuthenticated) {
      resolver.next();
    } else {
      await router.replaceAll([const LandingRoute()]);
      resolver.next(false);
    }
  }
}

Route<T> cupertinoModalBuilder<T>(
  BuildContext context,
  Widget child,
  CustomPage<T> page,
) {
  return CupertinoModalBottomSheetRoute(
    builder: (BuildContext context) {
      return _CupertinoBottomSheetContainer(
        child: child,
      );
    },
    settings: page,
    enableDrag: false,
    expanded: false,
  );
}

class _CupertinoBottomSheetContainer extends StatelessWidget {
  const _CupertinoBottomSheetContainer({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    const topRadius = Radius.circular(12);
    const shadow =
        BoxShadow(blurRadius: 10, color: Colors.black12, spreadRadius: 5);
    final topSafeAreaPadding = MediaQuery.of(context).padding.top;
    final topPadding = 10 + topSafeAreaPadding;
    final backgroundColor = CupertinoTheme.of(context).scaffoldBackgroundColor;

    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: topRadius),
        child: Container(
          decoration:
              BoxDecoration(color: backgroundColor, boxShadow: const [shadow]),
          width: double.infinity,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: child,
          ),
        ),
      ),
    );
  }
}
