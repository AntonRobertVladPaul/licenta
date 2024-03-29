import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/core/utils/snackbar_utils.dart';
import 'package:licenta/feature/locations/bloc/bloc.dart';
import 'package:licenta/feature/main/bloc/bloc.dart';
import 'package:licenta/feature/profile/profile.dart';
import 'package:licenta/resource/resource.dart';

class BookedLocationsPage extends StatelessWidget {
  const BookedLocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LargeTitlePage(
      title: 'Booked locations',
      showDefaultLeading: true,
      body: SafeArea(
        top: false,
        minimum: EdgeInsets.only(bottom: 16),
        child: _BookedLocationsBody(),
      ),
    );
  }
}

class _BookedLocationsBody extends StatefulWidget {
  const _BookedLocationsBody();

  @override
  State<_BookedLocationsBody> createState() => _BookedLocationsBodyState();
}

class _BookedLocationsBodyState extends State<_BookedLocationsBody> {
  late List<TextEditingController> openDoorCodeController;

  @override
  void initState() {
    super.initState();
    final bloc = context.read<LocationsBloc>()
      ..add(const LocationsEvent.locationsFetched());
    final reservations = bloc.state.locations
        .expand(
          (location) => location.getPersonalReservations(
            context.read<MainBloc>().state.account?.email ?? '',
          ),
        )
        .toList();

    openDoorCodeController = List.generate(
      reservations.length,
      (_) => TextEditingController(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationsBloc, LocationsState>(
      listener: (context, state) {
        if (state.status == LocationsStatus.doorOpened) {
          showSnackBar(
            context,
            'Door opened!',
            icon: Asset.location.widget(
              color: EasyBookingColors.white.value,
            ),
          );
        } else if (state.status == LocationsStatus.doorClosed) {
          showSnackBar(
            context,
            'Door closed!',
            icon: Asset.location.widget(
              color: EasyBookingColors.white.value,
            ),
          );
        } else if (state.status == LocationsStatus.failure) {
          showSnackBar(
            context,
            'Something went wrong!',
          );
        }
      },
      builder: (context, state) {
        if (state.locations.isEmpty) {
          return const Center(
            child: Text('No locations found!'),
          );
        }

        final reservations = state.locations
            .expand(
              (location) => location.getPersonalReservations(
                context.read<MainBloc>().state.account?.email ?? '',
              ),
            )
            .toList();

        return LoadableWidget(
          isLoading: state.status == LocationsStatus.loading ||
              state.status == LocationsStatus.initial,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSubtitle(),
                ...reservations.mapIndexed(
                  (index, reservation) => ReservationItem(
                    isButtonLoading:
                        state.status == LocationsStatus.doorLoading,
                    reservation: reservation,
                    onDoorUnlockPressed: () {
                      if (reservation.openDoorCode ==
                          openDoorCodeController[index].text) {
                        context.read<LocationsBloc>().add(
                              LocationsEvent.doorStatusChanged(
                                locationName: reservation.locationName,
                                openDoorCode: reservation.openDoorCode ?? '',
                                newDoorStatus: true,
                              ),
                            );
                        Future<void>.delayed(const Duration(seconds: 10))
                            .whenComplete(
                          () => context.read<LocationsBloc>().add(
                                LocationsEvent.doorStatusChanged(
                                  locationName: reservation.locationName,
                                  openDoorCode: reservation.openDoorCode ?? '',
                                  newDoorStatus: false,
                                ),
                              ),
                        );
                      } else {
                        showSnackBar(
                          context,
                          'Wrong code!',
                          icon: Asset.lock.widget(
                            color: EasyBookingColors.white.value,
                          ),
                        );
                      }
                    },
                    openDoorCode: reservation.openDoorCode ?? '',
                    openDoorCodeController: openDoorCodeController[index],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSubtitle() {
    return Text(
      'Here is a list of all the locations you have booked.',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: EasyBookingColors.secondaryText.value,
          ),
    );
  }
}
