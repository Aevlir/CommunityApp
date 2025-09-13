import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/core/services/session_service/session_model.dart';
import 'package:test/core/utils/session_util/session_util.dart';
import 'package:test/core/utils/shared_pref_util/shared_pref_util.dart';

part 'session_notifier.g.dart';

const String isLoggedInKey = 'test_logged_in';
const String tokenKey = 'test_token';

@Riverpod(keepAlive: true)
class SessionNotifier extends _$SessionNotifier {
  final prefsHelper = PrefsHelper(SharedPreferences.getInstance());

  @override
  Future<Session> build() async {
    return Future.delayed(const Duration(seconds: 1), () => loadSession());
  }

  Session loadSession() {
    final isLoggedIn = SessionUtil.getIsLoggedIn();

    if (!isLoggedIn) {
      return const Session();
    }

    return const Session(isLoggedIn: true);
  }

  Future<void> removeSession() async {
    await prefsHelper.remove(isLoggedInKey);

    final newSession = const Session(isLoggedIn: false, authToken: null);
    state = AsyncValue.data(newSession);
  }

  Future<void> saveSession(String authToken) async {
    await prefsHelper.setValue(isLoggedInKey, true);

    final newSession = Session(isLoggedIn: true, authToken: authToken);
    state = AsyncValue.data(newSession);
  }
}
