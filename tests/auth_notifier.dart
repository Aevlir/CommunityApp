import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/features/auth/api/auth_api.dart';
import 'package:test/features/auth/model/user_model/user_model.dart';
import 'package:test/features/auth/view_models/auth_notifier/auth_notifier.dart';

class MockUserAPI extends Mock implements UserAPI {}

void main() {
  late ProviderContainer container;
  late MockUserAPI mockAPI;

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    mockAPI = MockUserAPI();
    container = ProviderContainer(
      overrides: [userAPIProvider.overrideWithValue(mockAPI)],
    );
  });

  tearDown(() {
    container.dispose();
  });

  test('successful login updates state and calls onLogin', () async {
    final notifier = container.read(authNotifierProvider.notifier);

    when(() => mockAPI.userLogin(any())).thenAnswer(
      (_) async => const UserModel(token: '12345', email: 'test@email.com'),
    );

    var called = false;
    await notifier.login(
      email: 'test@email.com',
      password: 'password',
      onLogin: () => called = true,
    );

    final state = container.read(authNotifierProvider);
    expect(state.value?.token, '12345');
    expect(called, isTrue);
  });

  test('failed login sets AsyncError', () async {
    final notifier = container.read(authNotifierProvider.notifier);

    when(() => mockAPI.userLogin(any())).thenThrow(Exception('Invalid login'));

    await notifier.login(
      email: 'wrong@email.com',
      password: 'badpass',
      onLogin: () {},
    );

    expect(container.read(authNotifierProvider).hasError, isTrue);
  });
}
