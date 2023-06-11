import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/repository/locations_repository.dart';

part 'locations_bloc.freezed.dart';

part 'locations_event.dart';

part 'locations_state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc(LocationsRepository repository)
      : _repository = repository,
        super(const LocationsState()) {
    on<_LocationsCreated>(_onLocationCreated);
    on<_LocationsFetched>(_onLocationsFetched);
  }

  final LocationsRepository _repository;

  Future<void> _onLocationCreated(
    _LocationsCreated event,
    Emitter<LocationsState> emit,
  ) async {
    emit(state.copyWith(status: LocationsStatus.loading));
    final location = Location(
      name: event.name,
      capacity: event.capacity,
      addressLine1: event.addressLine1,
      addressLine2: event.addressLine2,
      price: event.price,
      ownerEmail: event.owner.email,
    );

    final result = await _repository.createLocation(location);

    await result.fold(
      (failure) async => emit(state.copyWith(status: LocationsStatus.failure)),
      (locationId) async {
        final imagesResult = await _repository.uploadImagesToLocation(
          images: event.images,
          locationId: locationId,
          location: location,
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
}
