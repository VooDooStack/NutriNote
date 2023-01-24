import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_user_model.g.dart';

@JsonSerializable()
class AppUser extends Equatable {
  final String displayName;
  final String email;
  final String? token;
  final String? phoneNumber;
  final String? imageUrl;

  const AppUser({
    required this.displayName,
    required this.email,
    this.phoneNumber,
    this.imageUrl,
    this.token,
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

  //empty user factory
  factory AppUser.empty() => const AppUser(
        displayName: '',
        email: '',
        phoneNumber: '',
        imageUrl: '',
        token: '',
      );
}
