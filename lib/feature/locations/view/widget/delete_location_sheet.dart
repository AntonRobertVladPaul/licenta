import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/bloc/bloc.dart';
import 'package:licenta/resource/resource.dart';

class DeleteLocationSheet extends StatelessWidget {
  const DeleteLocationSheet({
    super.key,
    required this.locationId,
  });

  final String locationId;

  @override
  Widget build(BuildContext context) {
    return CommonBottomSheet(
      image: Asset.deleteAlertIcon.widget(),
      title: 'Delete location',
      bodyText: 'Are you sure you want to delete this location?',
      mainButtonText: 'Delete',
      secondaryButtonText: 'Cancel',
      onMainButtonPressed: () {
        context.read<LocationsBloc>().add(
              LocationsEvent.locationDeleted(locationId: locationId),
            );
        context.popRoute();
      },
    );
  }
}
