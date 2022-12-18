// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clijeo_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClijeoUser _$$_ClijeoUserFromJson(Map<String, dynamic> json) =>
    _$_ClijeoUser(
      name: json['name'] as String,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      location: json['location'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ClijeoUserToJson(_$_ClijeoUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'location': instance.location,
      'runtimeType': instance.$type,
    };

_$_ClijeoEmptyUser _$$_ClijeoEmptyUserFromJson(Map<String, dynamic> json) =>
    _$_ClijeoEmptyUser(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ClijeoEmptyUserToJson(_$_ClijeoEmptyUser instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
