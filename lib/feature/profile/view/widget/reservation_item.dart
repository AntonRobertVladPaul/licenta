import 'package:flutter/material.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/entity/entity.dart';
import 'package:licenta/resource/resource.dart';

class ReservationItem extends StatelessWidget {
  const ReservationItem({
    super.key,
    required this.reservation,
    required this.onDoorUnlockPressed,
    required this.isButtonLoading,
    required this.openDoorCode,
    required this.openDoorCodeController,
  });

  final Reservation reservation;
  final String openDoorCode;
  final TextEditingController openDoorCodeController;
  final VoidCallback onDoorUnlockPressed;
  final bool isButtonLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDivider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLocationIcon(),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLocationName(context),
                  _buildTimeIntervalText(context),
                ],
              ),
            ),
          ],
        ),
        _buildOpenDoorCode(),
        _buildOpenDoorField(),
        _buildOpenDoorButton(),
        _buildDivider(),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Divider(
        height: 0,
        color: EasyBookingColors.inactiveShoutOut.value,
      ),
    );
  }

  Widget _buildLocationIcon() {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Asset.location.widget(),
    );
  }

  Widget _buildLocationName(BuildContext context) {
    return Text(
      reservation.locationName,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
    );
  }

  Widget _buildTimeIntervalText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Text(
        'From: ${reservation.bookedDates.first.shortMonthDay}'
        ' to ${reservation.bookedDates.last.shortMonthDay}',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: EasyBookingColors.secondaryText.value,
            ),
      ),
    );
  }

  Widget _buildOpenDoorCode() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text('Open door code: $openDoorCode'),
    );
  }

  Widget _buildOpenDoorField() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: OutlinedTextField(
        controller: openDoorCodeController,
        label: 'Enter code to open the door',
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  Widget _buildOpenDoorButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 36,
        child: EasyBookingButton(
          isLoading: isButtonLoading,
          text: 'Unlock door for 10 sec',
          onPressed: onDoorUnlockPressed,
          type: ButtonType.elevated,
          buttonStyleType: ButtonStyleType.primary,
        ),
      ),
    );
  }
}
