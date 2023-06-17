// ignore_for_file: avoid_dynamic_calls

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta/feature/locations/entity/entity.dart';

part 'location.freezed.dart';

part 'location.g.dart';

@freezed
class Location with _$Location {
  @JsonKey(includeIfNull: false)
  factory Location({
    String? id,
    required String ownerEmail,
    required String name,
    required int capacity,
    required String addressLine1,
    String? addressLine2,
    String? description,
    required int price,
    List<String>? images,
    @Default([]) List<Reservation> reservations,
  }) = _Location;

  const Location._();

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
        ownerEmail: json['ownerEmail'] as String,
        name: json['name'] as String,
        capacity: json['capacity'] as int,
        addressLine1: json['addressLine1'] as String,
        price: json['price'] as int,
        addressLine2: json['addressLine2'] as String?,
        description: json['description'] as String?,
        images: (json['images'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        reservations: (json['reservations'] as List<dynamic>?)?.map(
              (e) {
                return Reservation(
                  bookedDates: (e['bookedDates'] as List<dynamic>)
                      .map((e) => DateTime.parse(e as String))
                      .toList(),
                  isDoorOpen: e['isDoorOpen'] as bool,
                  openDoorCode: e['openDoorCode'] as String?,
                );
              },
            ).toList() ??
            const []);
  }

  @JsonKey(includeToJson: false)
  List<DateTime> get allBookedDates =>
      reservations.expand((reservation) => reservation.bookedDates).toList();
}
