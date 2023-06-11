import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/view/widget/location_info_form.dart';
import 'package:licenta/resource/asset/assets.dart';

class AddLocationPage extends StatelessWidget {
  const AddLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LargeTitlePage(
      title: 'Add your location',
      leading: GestureDetector(
        onTap: () {
          context.popRoute();
        },
        child: Asset.closeButton.widget(),
      ),
      body: const SafeArea(
        minimum: EdgeInsets.only(bottom: 16),
        child: _AddLocationBody(),
      ),
    );
  }
}

class _AddLocationBody extends StatelessWidget {
  const _AddLocationBody();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Text(
              'Complete the information below to add your location',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          _buildLocationForm(),
        ],
      ),
    );
  }

  Widget _buildLocationForm() {
    return const LocationInfoForm();
  }
}
