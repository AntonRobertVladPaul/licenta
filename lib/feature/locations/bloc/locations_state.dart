part of 'locations_bloc.dart';

enum LocationsStatus {
  initial,
  loading,
  failure,
  locationsFetched,
  locationCreated,
  locationUpdated,
  locationDeleted,
  imageDeleted,
  locationFetched,
}

@freezed
class LocationsState with _$LocationsState {
  const factory LocationsState({
    @Default(LocationsStatus.initial) LocationsStatus status,
    @Default([]) List<Location> locations,
    Location? location,
  }) = _LocationsState;
}
