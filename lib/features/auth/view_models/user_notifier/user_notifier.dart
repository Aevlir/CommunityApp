import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/core/shared/constants/regex/regex.dart';
import 'package:test/features/auth/model/user_model/user_model.dart';
import 'package:test/features/auth/view_models/error_notifier/error_notififer.dart';

part 'user_notifier.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  @override
  UserModel build() {
    return const UserModel();
  }

  // Update user data with reactive validation
  void updateUserData({String? email, String? password, String? token}) {
    state = state.copyWith(
      email: email ?? state.email,
      password: password ?? state.password,
    );

    if (token != null) {
      state = state.copyWith(token: token);
    }

    if (email != null) {
      if (email.isEmpty) {
        ref
            .read(errorNotifierProvider.notifier)
            .setEmailError('Email cannot be empty');
      } else if (!TestRegEx.email.hasMatch(email)) {
        ref
            .read(errorNotifierProvider.notifier)
            .setEmailError('Enter a valid email');
      } else {
        ref.read(errorNotifierProvider.notifier).setEmailError(null);
      }
    }

    if (password != null) {
      final passwordNotifier = ref.read(errorNotifierProvider.notifier);

      if (password.isEmpty) {
        passwordNotifier.setPasswordError(
          'Ensure that you’re entering the password',
        );
      } else if (password.length < 8) {
        passwordNotifier.setPasswordError(
          'Password must be at least 8 characters',
        );
      } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
        passwordNotifier.setPasswordError(
          'Password must contain at least 1 uppercase letter',
        );
      } else if (!RegExp(r'^[A-Za-z0-9!@#$&-]+$').hasMatch(password)) {
        passwordNotifier.setPasswordError(
          'Password contains invalid characters. Only letters, numbers, and ! @ # \$ & - are allowed',
        );
      } else {
        passwordNotifier.setPasswordError(null);
      }
    }
  }
}
