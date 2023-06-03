import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/resource/resource.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        minimum: EdgeInsets.only(bottom: 16),
        child: _LandingBody(),
      ),
    );
  }
}

class _LandingBody extends StatelessWidget {
  const _LandingBody();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLogo(),
          const Spacer(),
          _buildTitle(context),
          _buildSubtitle(context),
          _buildClientButton(context),
          _buildOwnerButton(context),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Asset.easyBookingBig.sizedWidget(size: const Size(100, 100)),
    );
  }

  Widget _buildTitle(BuildContext context) => Text(
        'Book.\nDiscover.\nReserve.\nEarn.',
        style: Theme.of(context).textTheme.displayLarge,
      );

  Widget _buildSubtitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(
          'Easy Booking is the best way to book and '
          'discover unique places to stay.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      );

  Widget _buildClientButton(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 32),
        child: EasyBookingButton(
          text: 'I am a client',
          onPressed: () => _onButtonPressed(context, AccountType.client),
          type: ButtonType.elevated,
          buttonStyleType: ButtonStyleType.dark,
        ),
      );

  Widget _buildOwnerButton(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: EasyBookingButton(
          text: 'I am an owner',
          onPressed: () => _onButtonPressed(context, AccountType.owner),
          type: ButtonType.outlined,
        ),
      );

  void _onButtonPressed(
    BuildContext context,
    AccountType accountType,
  ) {
    context.pushRoute(
      LoginOrSignUpRoute(type: accountType),
    );
  }
}
