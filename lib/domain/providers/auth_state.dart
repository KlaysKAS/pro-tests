import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user_credentials.dart';
import '../repository/authentication.dart';

/// If user != null - user auntificated
class AuthenticationStateNotifier extends StateNotifier<User?> {
  AuthenticationRepository? repo;

  AuthenticationStateNotifier(
    super.state, {
    this.repo,
  });

  void _updateState(User? newState) => state = newState;

  Future<bool> login(UserCredentials loginData) async {
    final user = repo?.login(loginData);
    _updateState(user);

    return user != null;
  }

  Future<bool> register(UserCredentials registerData) async {
    final user = repo?.register(registerData);
    _updateState(user);

    return user != null;
  }

  void signOut() {
    assert(state != null, 'Try to sign out without user');
    repo?.signOut();
    _updateState(null);
  }
}
