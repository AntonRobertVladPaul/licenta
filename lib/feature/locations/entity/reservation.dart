import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';

part 'reservation.g.dart';

@freezed
class Reservation with _$Reservation {
  factory Reservation({
    @Default([]) List<DateTime> bookedDates,
    @Default(false) bool isDoorOpen,
    required String clientEmail,
    required String locationName,
    String? openDoorCode,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);
}
