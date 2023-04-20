import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pro_tests/domain/models/test_lists/test_lists.dart';
import 'package:pro_tests/domain/models/test_with_question/test_with_questions.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/domain/providers/test_creation.dart';
import 'package:pro_tests/domain/providers/test_list.dart';
import 'package:pro_tests/domain/providers/test_results.dart';
import 'package:pro_tests/domain/repository/token_manager/token_manager.dart';
import 'package:pro_tests/ui/states/authentication_state/authentication_state.dart';
import 'package:pro_tests/ui/states/settings_state/settings_state.dart';
import 'package:pro_tests/ui/states/test_results_state/test_results_state.dart';

abstract class ServiceLocator {
  @protected
  abstract final Dio dio;

  abstract final TokenManager tokenManager;

  abstract final StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState> authenticationStateNotifier;

  abstract final StateProvider<SettingsState> settingsProvider;

// abstract final TestAttemptStateNotifier testAttemptStateNotifier;
  abstract final StateNotifierProvider<TestCreationStateNotifier, TestWithQuestion> testCreationStateNotifier;
  abstract final StateNotifierProvider<TestListStateNotifier, TestLists> testListStateNotifier;
  abstract final StateNotifierProvider<TestResultStateNotifier, TestResultState> testResultsStateNotifier;

  Future<void> init();
}
