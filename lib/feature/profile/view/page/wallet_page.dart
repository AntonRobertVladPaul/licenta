import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/core/utils/bottom_sheet_utils.dart';
import 'package:licenta/core/utils/snackbar_utils.dart';
import 'package:licenta/feature/main/bloc/bloc.dart';
import 'package:licenta/feature/profile/view/widget/withdraw_money_sheet.dart';
import 'package:licenta/resource/resource.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LargeTitlePage(
      title: 'Wallet',
      showDefaultLeading: true,
      body: _WalletBody(),
    );
  }
}

class _WalletBody extends StatefulWidget {
  const _WalletBody();

  @override
  State<_WalletBody> createState() => _WalletBodyState();
}

class _WalletBodyState extends State<_WalletBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {
        if (state.status == MainStatus.moneyWithdrawn) {
          context.read<MainBloc>().add(const MainEvent.accountFetched());
          showSnackBar(
            context,
            'Money withdrawn!',
            icon: Asset.payoutIcon.widget(
              color: EasyBookingColors.white.value,
            ),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
          child: LoadableWidget(
            isLoading: state.status == MainStatus.loading,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSubtitle(),
                _buildCard(state),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSubtitle() {
    return Text(
      'Withdraw money from your wallet to your bank account',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: EasyBookingColors.secondaryText.value,
          ),
    );
  }

  Widget _buildCard(MainState state) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Stack(
        children: [
          _buildBackground(),
          _buildInfo(state),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 204,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Asset.balanceCard.asBackgroundImage(),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: EasyBookingColors.balanceCardShadow.value,
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
    );
  }

  Widget _buildInfo(MainState state) {
    return Positioned.fill(
      top: 16,
      left: 16,
      right: 16,
      bottom: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your money amount:\n${state.account?.amount ?? 0} RON',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: EasyBookingColors.white.value,
                ),
          ),
          const Spacer(),
          EasyBookingButton(
            text: 'Withdraw the money',
            onPressed: () {
              showCommonBottomSheet(context, const WithdrawMoneySheet());
            },
            type: ButtonType.elevated,
            buttonStyleType: ButtonStyleType.light,
          )
        ],
      ),
    );
  }
}
