import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/bloc/bloc.dart';
import 'package:licenta/feature/locations/locations.dart';

class LocationsGridWidget extends StatelessWidget {
  const LocationsGridWidget({
    super.key,
    required this.accountType,
    required this.controller,
  });

  final AccountType accountType;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationsBloc, LocationsState>(
      builder: (context, state) {
        final locations = state.locations;
        return LoadableWidget(
          isLoading: state.status == LocationsStatus.loading ||
              state.status == LocationsStatus.initial,
          child: locations.isEmpty
              ? Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 4,
                      ),
                      child: Center(
                        child: DottedBorder(
                          padding: const EdgeInsets.all(32),
                          child: Text(
                            accountType == AccountType.client
                                ? 'No locations available at this moment'
                                : 'No locations added yet',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: CustomScrollView(
                    controller: controller,
                    slivers: [
                      SliverAlignedGrid.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 32,
                        crossAxisSpacing: 16,
                        itemCount: locations.length,
                        itemBuilder: (_, index) {
                          return LocationsItem(
                            location: locations[index],
                          );
                        },
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
