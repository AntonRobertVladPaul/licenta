// ignore_for_file: cascade_invocations

import 'dart:io';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/entity/entity.dart';
import 'package:licenta/feature/locations/repository/locations_repository.dart';

part 'locations_bloc.freezed.dart';

part 'locations_event.dart';

part 'locations_state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc(LocationsRepository repository)
      : _repository = repository,
        super(const LocationsState()) {
    on<_LocationCreated>(_onLocationCreated);
    on<_LocationsFetched>(_onLocationsFetched);
    on<_LocationUpdated>(_onLocationUpdated);
    on<_LocationDeleted>(_onLocationDeleted);
    on<_ImageDeleted>(_onImageDeleted);
    on<_LocationFetched>(_onLocationFetched);
    on<_BookDatesSaved>(_onBookDatesSaved);
    on<_LocationBooked>(_onLocationBooked);
    on<_DoorStatusChanged>(_onDoorStatusChanged);
  }

  final LocationsRepository _repository;

  Future<void> _onLocationCreated(
    _LocationCreated event,
    Emitter<LocationsState> emit,
  ) async {
    emit(state.copyWith(status: LocationsStatus.loading));
    final location = event.location;

    final result = await _repository.createLocation(location);

    await result.fold(
      (failure) async => emit(state.copyWith(status: LocationsStatus.failure)),
      (locationId) async {
        final createdLocation = location.copyWith(id: locationId);
        final imagesResult = await _repository.uploadImagesToLocation(
          images: event.images,
          location: createdLocation,
        );
        imagesResult.fold(
          (failure) => emit(state.copyWith(status: LocationsStatus.failure)),
          (_) => emit(state.copyWith(status: LocationsStatus.locationCreated)),
        );
      },
    );
  }

  Future<void> _onLocationsFetched(
    _LocationsFetched event,
    Emitter<LocationsState> emit,
  ) async {
    emit(state.copyWith(status: LocationsStatus.loading));

    final result = await _repository.fetchLocations(email: event.email);

    result.fold(
      (failure) => emit(state.copyWith(status: LocationsStatus.failure)),
      (locations) => emit(
        state.copyWith(
          status: LocationsStatus.locationsFetched,
          locations: locations,
        ),
      ),
    );
  }

  Future<void> _onLocationUpdated(
    _LocationUpdated event,
    Emitter<LocationsState> emit,
  ) async {
    emit(state.copyWith(status: LocationsStatus.loading));

    final result = await _repository.updateLocation(event.location);

    await result.fold(
      (_) async => emit(state.copyWith(status: LocationsStatus.failure)),
      (_) async {
        final imagesResult = await _repository.uploadImagesToLocation(
          images: event.images,
          isUpdate: true,
          location: event.location,
        );
        imagesResult.fold(
          (_) => emit(state.copyWith(status: LocationsStatus.failure)),
          (resultedLocation) {
            final locations = List<Location>.from(state.locations);

            locations
              ..removeWhere(
                (location) => location.id == resultedLocation.id,
              )
              ..add(resultedLocation);

            emit(
              state.copyWith(
                status: LocationsStatus.locationUpdated,
                locations: locations,
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _onLocationDeleted(
    _LocationDeleted event,
    Emitter<LocationsState> emit,
  ) async {
    emit(state.copyWith(status: LocationsStatus.loading));

    final result = await _repository.deleteLocation(event.locationId);

    result.fold(
      (_) => emit(state.copyWith(status: LocationsStatus.failure)),
      (_) => emit(state.copyWith(status: LocationsStatus.locationDeleted)),
    );
  }

  Future<void> _onImageDeleted(
    _ImageDeleted event,
    Emitter<LocationsState> emit,
  ) async {
    emit(state.copyWith(status: LocationsStatus.loading));

    final result = await _repository.deleteImage(
      locationId: event.locationId,
      imageUrl: event.imageUrl,
    );

    result.fold(
      (_) => emit(state.copyWith(status: LocationsStatus.failure)),
      (_) => emit(state.copyWith(status: LocationsStatus.imageDeleted)),
    );
  }

  Future<void> _onLocationFetched(
    _LocationFetched event,
    Emitter<LocationsState> emit,
  ) async {
    emit(state.copyWith(status: LocationsStatus.loading));

    final result = await _repository.fetchOneLocation(event.locationId);

    result.fold(
      (_) => emit(state.copyWith(status: LocationsStatus.failure)),
      (location) => emit(
        state.copyWith(
          status: LocationsStatus.locationFetched,
          location: location,
        ),
      ),
    );
  }

  Future<void> _onBookDatesSaved(
    _BookDatesSaved event,
    Emitter<LocationsState> emit,
  ) async {
    emit(state.copyWith(status: LocationsStatus.loading));
    emit(
      state.copyWith(
        status: LocationsStatus.bookDatesSaved,
        bookedDates: getDatesBetween(
          event.bookedDates.first,
          event.bookedDates.last,
        ),
      ),
    );
  }

  Future<void> _onLocationBooked(
    _LocationBooked event,
    Emitter<LocationsState> emit,
  ) async {
    if (state.location != null &&
        event.cvv.length == 3 &&
        event.cardNumber.length == 19) {
      emit(state.copyWith(status: LocationsStatus.loading));

      final oldReservations = List<Reservation>.from(
        state.location?.reservations ?? <Reservation>[],
      );

      final updatedReservations = [
        ...oldReservations,
        Reservation(
          bookedDates: state.bookedDates,
          openDoorCode: generateSixDigitCode().toString(),
          clientEmail: event.clientEmail,
          locationName: state.location!.name,
        ),
      ];

      final result = await _repository.bookLocation(
        location: state.location!,
        reservations: updatedReservations,
      );

      await result.fold(
        (_) async => emit(state.copyWith(status: LocationsStatus.failure)),
        (_) async {
          final updateAmountResult = await _repository.updateAmount(
            location: state.location!,
            amount: event.amount,
          );

          updateAmountResult.fold(
            (_) => emit(state.copyWith(status: LocationsStatus.failure)),
            (_) => emit(state.copyWith(status: LocationsStatus.locationBooked)),
          );
        },
      );
    } else {
      emit(state.copyWith(status: LocationsStatus.failure));
    }
  }

  Future<void> _onDoorStatusChanged(
    _DoorStatusChanged event,
    Emitter<LocationsState> emit,
  ) async {
    emit(state.copyWith(status: LocationsStatus.doorLoading));

    final result = await _repository.changeDoorStatus(
      locationName: event.locationName,
      openDoorCode: event.openDoorCode,
      newDoorStatus: event.newDoorStatus,
    );

    result.fold(
      (_) => emit(state.copyWith(status: LocationsStatus.failure)),
      (location) {
        if (event.newDoorStatus == true) {
          emit(state.copyWith(status: LocationsStatus.doorOpened));
        } else {
          emit(state.copyWith(status: LocationsStatus.doorClosed));
        }
      },
    );
  }

  List<DateTime> getDatesBetween(DateTime startDate, DateTime endDate) {
    final dates = <DateTime>[];
    var currentDate = startDate;

    while (currentDate.isBefore(endDate) ||
        currentDate.isAtSameMomentAs(endDate)) {
      dates.add(currentDate);
      currentDate = currentDate.add(const Duration(days: 1));
    }

    return dates;
  }

  int generateSixDigitCode() {
    final random = Random();
    const min = 100000;
    const max = 999999;

    return min + random.nextInt(max - min + 1);
  }
}
