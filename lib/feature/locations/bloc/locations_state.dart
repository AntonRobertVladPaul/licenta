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
  bookDatesSaved,
  locationBooked,
}

@freezed
class LocationsState with _$LocationsState {
  const factory LocationsState({
    @Default(LocationsStatus.initial) LocationsStatus status,
    @Default([]) List<Location> locations,
    Location? location,
    @Default([]) List<DateTime> bookedDates,
  }) = _LocationsState;
}
