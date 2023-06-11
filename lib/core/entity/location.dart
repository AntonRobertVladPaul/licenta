part of 'account.dart';

@freezed
class Location with _$Location {
  @JsonKey(includeIfNull: false)
  const factory Location({
    required String ownerEmail,
    required String name,
    required int capacity,
    required String addressLine1,
    String? addressLine2,
    required int price,
    List<String>? images,
    Reservation? reservation,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
