// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUser _$AppUserFromJson(Map<String, dynamic> json) => AppUser(
      id: json['id'] as String,
      username: json['username'] as String?,
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool?,
      phoneNumber: json['phoneNumber'] as String?,
      imageUrl: json['imageUrl'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$AppUserToJson(AppUser instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'token': instance.token,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.imageUrl,
    };
