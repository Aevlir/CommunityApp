// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Session _$SessionFromJson(Map<String, dynamic> json) => _Session(
  isLoggedIn: json['isLoggedIn'] as bool? ?? false,
  authToken: json['authToken'] as String?,
);

Map<String, dynamic> _$SessionToJson(_Session instance) => <String, dynamic>{
  'isLoggedIn': instance.isLoggedIn,
  'authToken': instance.authToken,
};
