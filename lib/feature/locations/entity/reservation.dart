import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.g.dart';

part 'reservation.freezed.dart';

@freezed
class Reservation with _$Reservation {
  const factory Reservation({
    required DateTime startDate,
    required DateTime endDate,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);
}
