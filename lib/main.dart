import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/core/routes/route_notifier.dart';
import 'package:test/core/services/session_service/session_notifier.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/utils/session_util/session_util.dart';
import 'package:test/core/utils/shared_pref_util/shared_pref_util.dart';
import 'package:test/features/auth/views/auth_wrapper/auth_wrapper.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  Future<void> initDriver() async {
    final prefsHelper = PrefsHelper(SharedPreferences.getInstance());

    final isLoggedIn = await prefsHelper.getValue<bool>(isLoggedInKey);

    await SessionUtil.setIsLoggedIn(isLoggedIn ?? false);
  }

  @override
  void initState() {
    initDriver();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final routes = ref.read(testRouteProvider);
    final sessionState = ref.watch(sessionNotifierProvider);

    return MaterialApp.router(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      routerConfig: routes,
      theme: ThemeData(
        primaryColor: TestColors.primaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: TestColors.primaryColor,
          primary: TestColors.primaryColor,
          secondary: TestColors.accentColor,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      builder: (context, child) {
        if (sessionState is AsyncLoading || sessionState is AsyncError) {
          return MediaQuery.withNoTextScaling(child: const AuthWrapper());
        }
        return MediaQuery.withNoTextScaling(
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
