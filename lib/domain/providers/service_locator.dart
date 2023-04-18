import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/domain/providers/test_attempt.dart';
import 'package:pro_tests/domain/providers/test_creation.dart';
import 'package:pro_tests/domain/providers/test_list.dart';

abstract class ServiceLocator {
  abstract final AuthenticationStateNotifier authenticationStateNotifier;
  abstract final TestAttemptStateNotifier testAttemptStateNotifier;
  abstract final TestCreationStateNotifier testCreationStateNotifier;
  abstract final TestListStateNotifier testListStateNotifier;
}
