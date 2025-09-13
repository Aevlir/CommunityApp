import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/core/services/session_service/session_notifier.dart';
import 'package:test/core/utils/shared_pref_util/shared_pref_util.dart';
import 'package:test/features/auth/api/auth_api.dart';
import 'package:test/features/auth/model/user_model/user_model.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  late final _userAPI = ref.read(userAPIProvider);
  late final _prefs = PrefsHelper(SharedPreferences.getInstance());

  @override
  AsyncValue<UserModel> build() {
    return const AsyncValue.data(UserModel());
  }

  Future<void> validateFields() async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 1));
    state = const AsyncValue.data(UserModel());
  }

  Future<void> login({
    required String email,
    required String password,
    required VoidCallback onLogin,
  }) async {
    state = const AsyncValue.loading();
    try {
      final response = await _userAPI.userLogin({
        'email': email,
        'password': password,
      });

      if (response.token != null) {
        onLogin();
      }
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> signUp({
    required String email,
    required String password,
    required VoidCallback onSignUp,
  }) async {
    debugPrint('Sign Up Called');
    state = const AsyncValue.loading();
    try {
      final response = await _userAPI.userRegister({
        'email': email,
        'password': password,
      });
      // {"id":4,"token":"QpwL5tke4Pnpja7X4"}
      if (response.token != null) {
        _prefs.setValue(tokenKey, response.token);
        _prefs.setValue(isLoggedInKey, true);
        onSignUp();
      }
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
