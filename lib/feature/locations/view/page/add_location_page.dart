import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/view/widget/location_info_form.dart';
import 'package:licenta/resource/asset/assets.dart';

class AddLocationPage extends StatelessWidget {
  const AddLocationPage({
    super.key,
    this.location,
  });

  final Location? location;

  @override
  Widget build(BuildContext context) {
    return LargeTitlePage(
      title: location != null ? 'Edit your location' : 'Add your location',
      leading: GestureDetector(
        onTap: () {
          context.popRoute();
        },
        child: Asset.closeButton.widget(),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(bottom: 16),
        child: _AddLocationBody(location: location),
      ),
    );
  }
}

class _AddLocationBody extends StatelessWidget {
  const _AddLocationBody({
    this.location,
  });

  final Location? location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSubtitle(context),
          _buildLocationForm(),
        ],
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    final text = location != null
        ? 'Edit your location info changing the text info or adding more images'
        : 'Complete the information below to add your location';
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  Widget _buildLocationForm() {
    return LocationInfoForm(location: location);
  }
}
