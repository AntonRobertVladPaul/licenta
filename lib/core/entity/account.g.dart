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
