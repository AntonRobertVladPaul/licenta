import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/resource/resource.dart';

class LocationsItem extends StatelessWidget {
  const LocationsItem({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(
        LocationDetailsRoute(location: location),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImage(),
          _buildTitle(context),
          _buildCapacity(context),
          _buildAddress(context),
          _buildPrice(context),
        ],
      ),
    );
  }

  Widget _buildImage() {
    if (location.images?.isNotEmpty ?? false) {
      return FadingNetworkImage(
        url: location.images?.first ?? '',
        height: 160,
        width: 160,
        fit: BoxFit.cover,
      );
    } else {
      return Asset.errorImage.sizedWidget(size: const Size(160, 240));
    }
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Text(
        location.name,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  Widget _buildCapacity(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Text(
        'Capacity: ${location.capacity} people',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: EasyBookingColors.secondaryText.value,
            ),
      ),
    );
  }

  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 2),
            child: Asset.unPaddedPinIcon.widget(
              color: EasyBookingColors.secondaryText.value,
            ),
          ),
          Text(
            '${location.addressLine1} ${location.addressLine2 ?? ''}',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: EasyBookingColors.secondaryText.value,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrice(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text(
        'Price: ${location.price} RON/night',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
