import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/domain/repository/authentication/authentication.dart';
import 'package:pro_tests/domain/services/auth_service.dart';
import 'package:pro_tests/ui/states/authentication_state/authentication_state.dart';

abstract class ServiceLocator {
  @protected
  abstract final Dio dio;
  @protected
  abstract final FlutterSecureStorage storage;

  // Auth module
  abstract final StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState> authenticationStateNotifier;
  abstract final AuthenticationRepository authenticationRepository;
  abstract final AuthService authService;

  // abstract final TestAttemptStateNotifier testAttemptStateNotifier;
  // abstract final TestCreationStateNotifier testCreationStateNotifier;
  // abstract final TestListStateNotifier testListStateNotifier;

  Future<void> init();

  Future<bool> putToken(String token);

  Future<void> deleteToken();
}
