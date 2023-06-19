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
  final openDoorCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<LocationsBloc>().add(const LocationsEvent.locationsFetched());
    openDoorCodeController.addListener(() {
      setState(() {});
    });
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
        final reservations = state.locations
            .expand(
              (location) => location.getPersonalReservations(
                context.read<MainBloc>().state.account?.email ?? '',
              ),
            )
            .toList();

        return LoadableWidget(
          isLoading: state.status == LocationsStatus.loading,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSubtitle(),
                ...reservations.map(
                  (reservation) => ReservationItem(
                    isButtonLoading:
                        state.status == LocationsStatus.doorLoading,
                    reservation: reservation,
                    onDoorUnlockPressed: () {
                      if (reservation.openDoorCode ==
                          openDoorCodeController.text) {
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
                    openDoorCodeController: openDoorCodeController,
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
