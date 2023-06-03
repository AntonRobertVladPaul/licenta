import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/resource/resource.dart';

class LargeTitlePage extends StatelessWidget {
  const LargeTitlePage({
    super.key,
    required this.title,
    this.showDefaultLeading = false,
    required this.body,
    this.showDefaultTrailing = false,
    this.trailing,
    this.leading,
    this.hasBigTitle = false,
    this.onBackButtonTapped,
    this.hasScrollBody = false,
  })  : hasProgressBar = false,
        numberOfSteps = null;

  const LargeTitlePage.withProgressBar({
    super.key,
    required this.body,
    required this.title,
    required this.numberOfSteps,
    this.trailing,
    this.leading,
    this.onBackButtonTapped,
    this.hasScrollBody = false,
    this.showDefaultLeading = true,
    this.showDefaultTrailing = true,
  })  : hasProgressBar = true,
        hasBigTitle = false;

  final String title;
  final bool showDefaultLeading;
  final bool showDefaultTrailing;
  final Widget? leading;
  final Widget? trailing;
  final bool hasBigTitle;
  final GestureTapCallback? onBackButtonTapped;

  final bool hasProgressBar;
  final int? numberOfSteps;
  final bool hasScrollBody;

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle;
    if (hasBigTitle) {
      titleStyle = Theme.of(context).textTheme.headlineLarge!;
    } else {
      titleStyle = Theme.of(context).textTheme.headlineSmall!;
    }

    return CupertinoTheme(
      data: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: Theme.of(context).textTheme.bodyLarge,
          navLargeTitleTextStyle:
              titleStyle.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          physics: hasScrollBody
              ? const NeverScrollableScrollPhysics()
              : const ClampingScrollPhysics(),
          slivers: [
            CupertinoSliverNavigationBar(
              heroTag: title,
              padding: const EdgeInsetsDirectional.only(start: 14, top: 8),
              backgroundColor: Colors.white,
              middle: hasProgressBar
                  ? ProgressBar(
                      currentStep: context.tabsRouter.activeIndex,
                      maximumDisplayedSteps: numberOfSteps!,
                    )
                  : null,
              leading: _buildLeadingIcon(context),
              trailing: _buildTrailingIcon(context),
              largeTitle: Text(
                title,
              ),
              border: null,
            ),
            SliverFillRemaining(
              hasScrollBody: hasScrollBody,
              child: body,
            )
          ],
        ),
      ),
    );
  }

  Widget? _buildLeadingIcon(BuildContext context) {
    if (showDefaultLeading) {
      if (hasProgressBar) {
        final tabsRouter = context.tabsRouter;
        final activeIndex = tabsRouter.activeIndex;

        return GestureDetector(
          onTap: onBackButtonTapped ??
              () {
                if (activeIndex > 0) {
                  tabsRouter.setActiveIndex(tabsRouter.activeIndex - 1);
                } else {
                  tabsRouter.pop();
                }
              },
          child: activeIndex == 0
              ? Asset.closeButton.widget()
              : Asset.backButton.widget(),
        );
      } else {
        return GestureDetector(
          onTap: () {
            context.popRoute();
          },
          child: !context.router.canPop()
              ? Asset.closeButton.widget()
              : Asset.backButton.widget(),
        );
      }
    }
    return leading;
  }

  Widget? _buildTrailingIcon(BuildContext context) {
    if (showDefaultTrailing) {
      if (hasProgressBar) {
        final tabsRouter = context.tabsRouter;
        final activeIndex = tabsRouter.activeIndex;

        if (activeIndex > 0) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Asset.closeButton.widget(),
            ),
          );
        }
      } else {
        return GestureDetector(
          onTap: () {
            context.popRoute();
          },
          child: !context.router.canPop()
              ? Asset.closeButton.widget()
              : Asset.backButton.widget(),
        );
      }
    }
    return trailing;
  }
}
