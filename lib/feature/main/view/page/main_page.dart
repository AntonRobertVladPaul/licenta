import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/main/main.dart';
import 'package:licenta/resource/resource.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(bottom: 16),
        child: _MainBody(),
      ),
    );
  }
}

class _MainBody extends StatefulWidget {
  const _MainBody();

  @override
  State<_MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<_MainBody> {
  @override
  void initState() {
    super.initState();

    context.read<MainBloc>().add(const MainEvent.accountFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        final account = state.account;
        if (account == null) return const Center(child: Loader());
        return _buildTabsScaffold(account);
      },
    );
  }

  Widget _buildTabsScaffold(Account account) {
    return AutoTabsScaffold(
      routes: const [
        LocationsRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) =>
          _buildBottomNavBar(context, tabsRouter, account.accountType),
    );
  }

  Widget _buildBottomNavBar(
    BuildContext context,
    TabsRouter tabsRouter,
    AccountType accountType,
  ) =>
      SizedBox(
        height: 48,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: EasyBookingColors.primaryText.value,
          selectedLabelStyle: Theme.of(context).textTheme.labelMedium,
          unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
          unselectedItemColor: EasyBookingColors.secondaryText.value,
          currentIndex: tabsRouter.activeIndex,
          onTap: (tab) {
            setState(
              () => tabsRouter.setActiveIndex(tab),
            );
          },
          items: getBottomNavItems(
            tabsRouter.activeIndex,
            accountType,
          ),
        ),
      );

  List<BottomNavigationBarItem> getBottomNavItems(
    int activeIndex,
    AccountType accountType,
  ) {
    return [
      BottomNavigationBarItem(
        label: accountType == AccountType.client ? 'Locations' : 'My Locations',
        icon: Asset.location.sizedWidget(
          size: const Size(20, 20),
          color: activeIndex == 0
              ? EasyBookingColors.primaryText.value
              : EasyBookingColors.secondaryText.value,
        ),
      ),
      BottomNavigationBarItem(
        label: 'Profile',
        icon: _buildAvatarIcon(activeIndex == 1),
      ),
    ];
  }

  Widget _buildAvatarIcon(bool isActive) {
    return SizedBox(
      height: 20,
      width: 20,
      child: Asset.profileUser.widget(
        color: isActive
            ? EasyBookingColors.primaryText.value
            : EasyBookingColors.secondaryText.value,
      ),
    );
  }
}
