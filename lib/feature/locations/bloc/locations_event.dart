part of 'locations_bloc.dart';

@freezed
class LocationsEvent with _$LocationsEvent {
  const factory LocationsEvent.locationCreated({
    required Location location,
    required List<File> images,
  }) = _LocationCreated;

  const factory LocationsEvent.locationsFetched({
    String? email,
  }) = _LocationsFetched;

  const factory LocationsEvent.locationUpdated({
    required Location location,
    required List<File> images,
  }) = _LocationUpdated;

  const factory LocationsEvent.locationDeleted({
    required String locationId,
  }) = _LocationDeleted;

  const factory LocationsEvent.imageDeleted({
    required String locationId,
    required String imageUrl,
  }) = _ImageDeleted;

  const factory LocationsEvent.locationFetched({
    required String locationId,
  }) = _LocationFetched;
}
