part of 'account.dart';

@freezed
class Location with _$Location {
  @JsonKey(includeIfNull: false)
  const factory Location({
    String? id,
    required String ownerEmail,
    required String name,
    required int capacity,
    required String addressLine1,
    String? addressLine2,
    String? description,
    required int price,
    List<String>? images,
    Reservation? reservation,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
