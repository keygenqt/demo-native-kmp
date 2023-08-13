import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// Roles for [UserEntity]. Allows you to share the availability of features
enum UserRole { guest, user, admin }

/// Data class model
@JsonSerializable()
class UserEntity {
  UserEntity({
    required this.login,
    required this.name,
    required this.bio,
    required this.created_at,
  });

  final String login;
  final String name;
  final String bio;
  final String created_at;

  /// Get model from map
  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);

  /// Get map from model
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  /// Get string json
  @override
  String toString() => const JsonEncoder().convert(toJson());
}
