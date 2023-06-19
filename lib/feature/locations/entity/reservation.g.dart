// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reservation _$$_ReservationFromJson(Map<String, dynamic> json) =>
    _$_Reservation(
      bookedDates: (json['bookedDates'] as List<dynamic>?)
              ?.map((e) => DateTime.parse(e as String))
              .toList() ??
          const [],
      isDoorOpen: json['isDoorOpen'] as bool? ?? false,
      clientEmail: json['clientEmail'] as String,
      locationName: json['locationName'] as String,
      openDoorCode: json['openDoorCode'] as String?,
    );

Map<String, dynamic> _$$_ReservationToJson(_$_Reservation instance) =>
    <String, dynamic>{
      'bookedDates':
          instance.bookedDates.map((e) => e.toIso8601String()).toList(),
      'isDoorOpen': instance.isDoorOpen,
      'clientEmail': instance.clientEmail,
      'locationName': instance.locationName,
      'openDoorCode': instance.openDoorCode,
    };
