import 'package:dio/dio.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/domain/providers/test_attempt.dart';
import 'package:pro_tests/domain/providers/test_creation.dart';
import 'package:pro_tests/domain/providers/test_list.dart';
import 'package:pro_tests/domain/repository/authentication.dart';
import 'package:pro_tests/domain/services/auth_service.dart';

abstract class ServiceLocator {
  abstract final Dio dio;

  // Auth module
  abstract final AuthenticationStateNotifier authenticationStateNotifier;
  abstract final AuthenticationRepository authenticationRepository;
  abstract final AuthService authService;

  abstract final TestAttemptStateNotifier testAttemptStateNotifier;
  abstract final TestCreationStateNotifier testCreationStateNotifier;
  abstract final TestListStateNotifier testListStateNotifier;

  Future<void> init();
}
