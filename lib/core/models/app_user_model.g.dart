// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppUserCWProxy {
  AppUser weight(double weight);

  AppUser height(double height);

  AppUser gender(String gender);

  AppUser age(int age);

  AppUser bmr(double bmr);

  AppUser tdee(double? tdee);

  AppUser id(String id);

  AppUser email(String email);

  AppUser username(String? username);

  AppUser emailVerified(bool? emailVerified);

  AppUser phoneNumber(String? phoneNumber);

  AppUser imageUrl(String? imageUrl);

  AppUser token(String? token);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppUser(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppUser(...).copyWith(id: 12, name: "My name")
  /// ````
  AppUser call({
    double? weight,
    double? height,
    String? gender,
    int? age,
    double? bmr,
    double? tdee,
    String? id,
    String? email,
    String? username,
    bool? emailVerified,
    String? phoneNumber,
    String? imageUrl,
    String? token,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppUser.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppUser.copyWith.fieldName(...)`
class _$AppUserCWProxyImpl implements _$AppUserCWProxy {
  const _$AppUserCWProxyImpl(this._value);

  final AppUser _value;

  @override
  AppUser weight(double weight) => this(weight: weight);

  @override
  AppUser height(double height) => this(height: height);

  @override
  AppUser gender(String gender) => this(gender: gender);

  @override
  AppUser age(int age) => this(age: age);

  @override
  AppUser bmr(double bmr) => this(bmr: bmr);

  @override
  AppUser tdee(double? tdee) => this(tdee: tdee);

  @override
  AppUser id(String id) => this(id: id);

  @override
  AppUser email(String email) => this(email: email);

  @override
  AppUser username(String? username) => this(username: username);

  @override
  AppUser emailVerified(bool? emailVerified) =>
      this(emailVerified: emailVerified);

  @override
  AppUser phoneNumber(String? phoneNumber) => this(phoneNumber: phoneNumber);

  @override
  AppUser imageUrl(String? imageUrl) => this(imageUrl: imageUrl);

  @override
  AppUser token(String? token) => this(token: token);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppUser(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppUser(...).copyWith(id: 12, name: "My name")
  /// ````
  AppUser call({
    Object? weight = const $CopyWithPlaceholder(),
    Object? height = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? age = const $CopyWithPlaceholder(),
    Object? bmr = const $CopyWithPlaceholder(),
    Object? tdee = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? emailVerified = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
  }) {
    return AppUser(
      weight: weight == const $CopyWithPlaceholder() || weight == null
          ? _value.weight
          // ignore: cast_nullable_to_non_nullable
          : weight as double,
      height: height == const $CopyWithPlaceholder() || height == null
          ? _value.height
          // ignore: cast_nullable_to_non_nullable
          : height as double,
      gender: gender == const $CopyWithPlaceholder() || gender == null
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as String,
      age: age == const $CopyWithPlaceholder() || age == null
          ? _value.age
          // ignore: cast_nullable_to_non_nullable
          : age as int,
      bmr: bmr == const $CopyWithPlaceholder() || bmr == null
          ? _value.bmr
          // ignore: cast_nullable_to_non_nullable
          : bmr as double,
      tdee: tdee == const $CopyWithPlaceholder()
          ? _value.tdee
          // ignore: cast_nullable_to_non_nullable
          : tdee as double?,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String?,
      emailVerified: emailVerified == const $CopyWithPlaceholder()
          ? _value.emailVerified
          // ignore: cast_nullable_to_non_nullable
          : emailVerified as bool?,
      phoneNumber: phoneNumber == const $CopyWithPlaceholder()
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String?,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String?,
    );
  }
}

extension $AppUserCopyWith on AppUser {
  /// Returns a callable class that can be used as follows: `instanceOfAppUser.copyWith(...)` or like so:`instanceOfAppUser.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppUserCWProxy get copyWith => _$AppUserCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUser _$AppUserFromJson(Map<String, dynamic> json) => AppUser(
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      gender: json['gender'] as String,
      age: json['age'] as int,
      bmr: (json['bmr'] as num).toDouble(),
      tdee: (json['tdee'] as num?)?.toDouble(),
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      phoneNumber: json['phoneNumber'] as String?,
      imageUrl: json['imageUrl'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$AppUserToJson(AppUser instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'emailVerified': instance.emailVerified,
      'token': instance.token,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.imageUrl,
      'weight': instance.weight,
      'height': instance.height,
      'gender': instance.gender,
      'age': instance.age,
      'bmr': instance.bmr,
      'tdee': instance.tdee,
    };
