part of 'locations_bloc.dart';

enum LocationsStatus {
  initial,
  loading,
  failure,
  locationsFetched,
  locationCreated,
}

@freezed
class LocationsState with _$LocationsState {
  const factory LocationsState({
    @Default(LocationsStatus.initial) LocationsStatus status,
    @Default([]) List<Location> locations,
  }) = _LocationsState;
}
