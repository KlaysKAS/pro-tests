import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro_tests/domain/models/user_credentials.dart';

part 'authentication_state.freezed.dart';

part 'authentication_state.g.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.signIn([
    @Default(UserCredentials(
      username: '',
      password: '',
    ))
        UserCredentials credentials,
  ]) = SignInData;

  const factory AuthenticationState.signUp([
    @Default(UserCredentials(
      username: '',
      password: '',
      firstname: '',
      lastname: '',
    ))
        UserCredentials credentials,
  ]) = SignUpData;

  const factory AuthenticationState.signInLoading() = SignInLoading;

  const factory AuthenticationState.signUpLoading() = SignUpLoading;

  const factory AuthenticationState.error([
    String? message,
    @Default(UserCredentials(
      username: '',
      password: '',
      firstname: '',
      lastname: '',
    ))
        UserCredentials credentials,
  ]) = Error;

  const factory AuthenticationState.success() = Success;

  factory AuthenticationState.fromJson(Map<String, dynamic> json) => _$AuthenticationStateFromJson(json);
}
