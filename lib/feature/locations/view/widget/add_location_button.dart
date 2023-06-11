import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/resource/resource.dart';

class CreateCampaignButton extends StatelessWidget {
  const CreateCampaignButton({
    super.key,
    required this.isExtended,
  });

  final bool isExtended;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: AlignmentDirectional.bottomEnd,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            width: !isExtended ? 50 : 150,
            child: FloatingActionButton.extended(
              backgroundColor: EasyBookingColors.primary.value,
              isExtended: isExtended,
              shape: const RoundedRectangleBorder(),
              onPressed: () {
                context.router.push(const AddLocationRoute());
              },
              icon: Asset.plus.widget(color: Colors.white),
              extendedPadding: const EdgeInsets.symmetric(horizontal: 16),
              label: const Text('Location'),
            ),
          ),
        ),
      ),
    );
  }
}
