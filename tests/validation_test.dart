import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test/features/auth/view_models/error_notifier/error_notififer.dart';
import 'package:test/features/auth/view_models/user_notifier/user_notifier.dart';

void main() {
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer();
  });

  tearDown(() {
    container.dispose();
  });

  test('should set error when email is invalid', () {
    final notifier = container.read(userNotifierProvider.notifier);

    notifier.updateUserData(email: 'invalid');
    final errorState = container.read(errorNotifierProvider);

    expect(errorState.errorEmail, 'Enter a valid email');
  });

  test('should set error when password is too short', () {
    final notifier = container.read(userNotifierProvider.notifier);

    notifier.updateUserData(password: 'abc');
    final errorState = container.read(errorNotifierProvider);

    expect(errorState.errorPassword, 'Password must be at least 8 characters');
  });

  test('should clear errors for valid inputs', () {
    final notifier = container.read(userNotifierProvider.notifier);

    notifier.updateUserData(email: 'test@email.com', password: 'StrongPass1');
    final errorState = container.read(errorNotifierProvider);

    expect(errorState.errorEmail, isNull);
    expect(errorState.errorPassword, isNull);
  });
}
