// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      accountType: $enumDecode(_$AccountTypeEnumMap, json['accountType']),
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'accountType': _$AccountTypeEnumMap[instance.accountType]!,
    };

const _$AccountTypeEnumMap = {
  AccountType.client: 'client',
  AccountType.owner: 'owner',
};

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      ownerEmail: json['ownerEmail'] as String,
      name: json['name'] as String,
      capacity: json['capacity'] as int,
      addressLine1: json['addressLine1'] as String,
      addressLine2: json['addressLine2'] as String?,
      price: json['price'] as int,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      reservation: json['reservation'] == null
          ? null
          : Reservation.fromJson(json['reservation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'ownerEmail': instance.ownerEmail,
      'name': instance.name,
      'capacity': instance.capacity,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'price': instance.price,
      'images': instance.images,
      'reservation': instance.reservation,
    };
