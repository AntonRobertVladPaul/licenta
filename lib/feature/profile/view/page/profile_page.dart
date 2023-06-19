import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/main/bloc/bloc.dart';
import 'package:licenta/feature/profile/profile.dart';
import 'package:licenta/resource/resource.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(bottom: 16),
        child: _ProfileBody(),
      ),
    );
  }
}

class _ProfileBody extends StatefulWidget {
  const _ProfileBody();

  @override
  State<_ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<_ProfileBody> {
  @override
  Widget build(BuildContext context) {
    final account = context.read<MainBloc>().state.account;

    if (account == null) return const Center(child: Loader());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAccountIcon(account),
        _buildBody(account),
      ],
    );
  }

  Widget _buildAccountIcon(Account account) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Asset.easyBookingBig.sizedWidget(size: const Size(80, 80)),
    );
  }

  Widget _buildBody(Account account) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildName(account),
          _buildSubtitle(account),
          _buildItems(account),
        ],
      ),
    );
  }

  Widget _buildName(Account account) {
    return Text(
      '${account.firstName} ${account.lastName}',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w500,
          ),
    );
  }

  Widget _buildSubtitle(Account account) {
    return Text(
      account.accountType.name.capitalize(),
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: EasyBookingColors.secondaryText.value,
          ),
    );
  }

  Widget _buildItems(Account account) {
    final profileItems = ProfileItem.values
        .where(
          (item) =>
              item.accountType == account.accountType ||
              item.accountType == null,
        )
        .toList();

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: profileItems
            .map(
              (item) => ProfileItemWidget(
                item: item,
                onTap: () {
                  switch (item) {
                    case ProfileItem.wallet:
                      context.pushRoute(const WalletRoute());
                      break;
                    case ProfileItem.bookedLocations:
                      context.pushRoute(const BookedLocationsRoute());
                      break;
                    case ProfileItem.logout:
                      const secureStorage = FlutterSecureStorage();
                      secureStorage
                          .delete(key: StorageConstants.authKey)
                          .whenComplete(
                            () => context.router.replaceAll(
                              [const LandingRoute()],
                            ),
                          );
                      break;
                  }
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
