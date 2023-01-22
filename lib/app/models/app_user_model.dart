import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_user_model.g.dart';

@JsonSerializable()
class AppUser extends Equatable {
  final String displayName;
  final String email;
  final String phoneNumber;
  final String imageUrl;
  final String token;

  const AppUser({
    required this.displayName,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
    required this.token,
  });

  @override
  List<Object?> get props => [displayName, email, phoneNumber, imageUrl, token];

  //copy with
  AppUser copyWith({
    String? displayName,
    String? email,
    String? phoneNumber,
    String? imageUrl,
    String? token,
  }) {
    return AppUser(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      imageUrl: imageUrl ?? this.imageUrl,
      token: token ?? this.token,
    );
  }

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);
  Map<String, dynamic> toJson() => _$AppUserToJson(this);
}
