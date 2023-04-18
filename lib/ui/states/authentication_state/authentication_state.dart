import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

part 'authentication_state.g.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.signIn() = SignInData;

  const factory AuthenticationState.signUp() = SignUpData;

  const factory AuthenticationState.signInLoading() = SignInLoading;

  const factory AuthenticationState.signUpLoading() = SignUpLoading;

  const factory AuthenticationState.signInError([String? message]) =
      SignInError;

  const factory AuthenticationState.signUpError([String? message]) =
      SignUpError;

  const factory AuthenticationState.success() = Success;

  factory AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationStateFromJson(json);
}
