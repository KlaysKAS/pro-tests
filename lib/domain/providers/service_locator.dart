import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/domain/repository/token_manager/token_manager.dart';
import 'package:pro_tests/ui/states/authentication_state/authentication_state.dart';

abstract class ServiceLocator {
  @protected
  abstract final Dio dio;

  abstract final TokenManager tokenManager;

  abstract final StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState> authenticationStateNotifier;

// abstract final TestAttemptStateNotifier testAttemptStateNotifier;
// abstract final TestCreationStateNotifier testCreationStateNotifier;
// abstract final TestListStateNotifier testListStateNotifier;

  Future<bool> init();
}
