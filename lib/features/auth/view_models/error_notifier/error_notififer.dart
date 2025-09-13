import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/features/auth/model/error_model/error_model.dart';

part 'error_notififer.g.dart';

@riverpod
class ErrorNotifier extends _$ErrorNotifier {
  @override
  ErrorModel build() {
    return const ErrorModel();
  }

  // Set email error
  void setEmailError(String? message) {
    state = state.copyWith(errorEmail: message);
  }

  // Set password error
  void setPasswordError(String? message) {
    state = state.copyWith(errorPassword: message);
  }

  // Clear Email Error
  void clearEmailError() {
    state = state.copyWith(errorEmail: null);
  }

  // Clear Password Error
  void clearPasswordError() {
    state = state.copyWith(errorPassword: null);
  }
}
