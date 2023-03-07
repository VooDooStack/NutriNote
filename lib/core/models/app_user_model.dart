import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_user_model.g.dart';

@JsonSerializable()
class AppUser extends Equatable {
  final String id;
  final String email;
  final String? username;
  final bool? emailVerified;
  final String? token;
  final String? phoneNumber;
  final String? imageUrl;

  const AppUser({
    required this.id,
    required this.email,
    this.username,
    this.emailVerified,
    this.phoneNumber,
    this.imageUrl,
    this.token,
  });

  @override
  List<Object?> get props => [username, email, phoneNumber, imageUrl, token, id, emailVerified];

  //copy with
  AppUser copyWith({
    String? username,
    String? email,
    String? phoneNumber,
    String? imageUrl,
    String? token,
    String? id,
    bool? emailVerified,
  }) {
    return AppUser(
      username: username ?? this.username,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      imageUrl: imageUrl ?? this.imageUrl,
      token: token ?? this.token,
      id: id ?? this.id,
      emailVerified: emailVerified ?? this.emailVerified,
    );
  }

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);
  Map<String, dynamic> toJson() => _$AppUserToJson(this);

  //empty user factory
  factory AppUser.empty() => const AppUser(
        username: '',
        email: '',
        phoneNumber: '',
        imageUrl: '',
        token: '',
        id: '',
        emailVerified: false,
      );
}
