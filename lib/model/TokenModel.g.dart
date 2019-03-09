// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TokenModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenModel _$TokenModelFromJson(Map<String, dynamic> json) {
  return TokenModel(
      json['access_token'] as String,
      json['token_type'] as String,
      json['refresh_token'] as String,
      json['expires_in'] as int,
      json['scope'] as String);
}

Map<String, dynamic> _$TokenModelToJson(TokenModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
      'scope': instance.scope
    };
