import 'package:licenta/core/core.dart';
import 'package:licenta/feature/locations/entity/entity.dart';

extension LocationExtension on Location {
  List<Reservation> getPersonalReservations(String email) {
    return reservations
        .where((reservation) => reservation.clientEmail == email)
        .toList();
  }
}
