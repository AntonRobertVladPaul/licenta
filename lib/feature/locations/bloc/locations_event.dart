part of 'locations_bloc.dart';

@freezed
class LocationsEvent with _$LocationsEvent {
  const factory LocationsEvent.locationCreated({
    required String name,
    required int price,
    required int capacity,
    required String addressLine1,
    String? addressLine2,
    required List<File> images,
    required Account owner,
  }) = _LocationsCreated;

  const factory LocationsEvent.locationsFetched({
    String? email,
  }) = _LocationsFetched;
}
