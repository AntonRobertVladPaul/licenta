import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/locations.dart';

class LocationsGridWidget extends StatelessWidget {
  const LocationsGridWidget({
    super.key,
    required this.accountType,
    required this.locations,
  });

  final AccountType accountType;
  final List<Location> locations;

  @override
  Widget build(BuildContext context) {
    return locations.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.only(top: 24),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: CustomScrollView(
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
          )
        : Column(
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
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
