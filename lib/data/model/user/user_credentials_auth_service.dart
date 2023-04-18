import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials_auth_service.freezed.dart';

part 'user_credentials_auth_service.g.dart';

@freezed
class UserCredentialsAuthService with _$UserCredentialsAuthService {
  const factory UserCredentialsAuthService(
    final String login,
    final String password,
    final String? fullName,
  ) = _UserCredentialsAuthService;

  factory UserCredentialsAuthService.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsAuthServiceFromJson(json);
}
