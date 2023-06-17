import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/resource/resource.dart';

class LocationBookedSheet extends StatelessWidget {
  const LocationBookedSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonBottomSheet(
      image: Asset.checkAlertIcon.widget(),
      title: 'Location booked',
      bodyText: 'Your location has been booked successfully. '
          'You can see the location in the '
          '"My Locations" section from Profile tab.',
      mainButtonText: 'Ok',
      onMainButtonPressed: () {
        context.router.popUntilRoot();
      },
    );
  }
}
