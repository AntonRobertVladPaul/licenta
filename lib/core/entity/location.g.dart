// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      id: json['id'] as String?,
      ownerEmail: json['ownerEmail'] as String,
      name: json['name'] as String,
      capacity: json['capacity'] as int,
      addressLine1: json['addressLine1'] as String,
      addressLine2: json['addressLine2'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      reservations: (json['reservations'] as List<dynamic>?)
              ?.map((e) => Reservation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerEmail': instance.ownerEmail,
      'name': instance.name,
      'capacity': instance.capacity,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'description': instance.description,
      'price': instance.price,
      'images': instance.images,
      'reservations': instance.reservations,
    };
