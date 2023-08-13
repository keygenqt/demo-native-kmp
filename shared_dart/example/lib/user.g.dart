// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      login: json['login'] as String,
      name: json['name'] as String,
      bio: json['bio'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'login': instance.login,
      'name': instance.name,
      'bio': instance.bio,
      'created_at': instance.created_at,
    };
