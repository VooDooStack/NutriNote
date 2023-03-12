import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_user_model.g.dart';

@CopyWith()
@JsonSerializable()
class AppUser extends Equatable {
  final String id;
  final String email;
  final String? username;
  final bool? emailVerified;
  final String? token;
  final String? phoneNumber;
  final String? imageUrl;
  final double weight;
  final double height;
  final String gender;
  final int age;
  final double bmr;
  final double? tdee;

  const AppUser({
    required this.weight,
    required this.height,
    required this.gender,
    required this.age,
    required this.bmr,
    this.tdee,
    required this.id,
    required this.email,
    this.username,
    this.emailVerified,
    this.phoneNumber,
    this.imageUrl,
    this.token,
  });

  @override
  List<Object?> get props => [username, email, phoneNumber, imageUrl, token, id, emailVerified, tdee, bmr, age, weight, gender, height];

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
        weight: 0,
        height: 0,
        gender: '',
        age: 0,
        bmr: 0,
        tdee: 0,
      );
}
