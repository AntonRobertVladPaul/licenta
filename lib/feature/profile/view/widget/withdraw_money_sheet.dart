import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/main/bloc/bloc.dart';

class WithdrawMoneySheet extends StatefulWidget {
  const WithdrawMoneySheet({super.key});

  @override
  State<WithdrawMoneySheet> createState() => _WithdrawMoneySheetState();
}

class _WithdrawMoneySheetState extends State<WithdrawMoneySheet> {
  final ibanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CommonBottomSheet(
      title: 'Withdraw money',
      bodyWidget: Column(
        children: [
          const Text(
            'Money will be sent to your'
            ' bank account in 2-5 working days',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: OutlinedTextField(
              label: 'IBAN',
              controller: ibanController,
              hint: 'RO00 XXXX XXXX XXXX XXXX XXXX',
              textInputAction: TextInputAction.done,
            ),
          ),
        ],
      ),
      mainButtonText: 'Withdraw',
      onMainButtonPressed: () {
        context.read<MainBloc>().add(
              MainEvent.moneyWithdrawn(
                iban: ibanController.text,
              ),
            );
        context.popRoute();
      },
      secondaryButtonText: 'Cancel',
    );
  }
}
