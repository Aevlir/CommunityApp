import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/core/routes/constants/route_paths.dart';
import 'package:test/core/services/session_service/session_model.dart';
import 'package:test/core/services/session_service/session_notifier.dart';
import 'package:test/core/widgets/test_layout.dart';
import 'package:test/features/auth/views/auth_wrapper/auth_wrapper.dart';
import 'package:test/features/auth/views/login_views/login.dart';
import 'package:test/features/auth/views/sign_up_views/sign_up_email.dart';
import 'package:test/features/auth/views/sign_up_views/sign_up_password.dart';
import 'package:test/features/home/views/home.dart';

part 'route_notifier.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter testRoute(Ref ref) {
  final refreshNotifier = ValueNotifier<int>(0);
  ref.listen<AsyncValue<Session>>(
    sessionNotifierProvider,
    (_, next) => refreshNotifier.value++,
    fireImmediately: true,
  );
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    refreshListenable: refreshNotifier,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final sessionState = ref.read(sessionNotifierProvider);

      final session = sessionState.value;
      final isLoggedIn = session?.isLoggedIn;
      if (state.fullPath == AppRoute.auth.path) {
        if (isLoggedIn == true) {
          return AppRoute.home.path;
        } else {
          return AppRoute.login.path;
        }
      }

      return null;
    },
    routes: [
      GoRoute(
        path: AppRoute.auth.path,
        name: AppRoute.auth.name,
        builder: (context, state) {
          return const TestLayout(child: AuthWrapper());
        },
        routes: [
          GoRoute(
            path: AppRoute.login.path,
            name: AppRoute.login.name,
            builder: (context, state) {
              return const TestLayout(child: Login());
            },
          ),
          GoRoute(
            path: AppRoute.signUp.path,
            name: AppRoute.signUp.name,
            builder: (context, state) {
              return const TestLayout(child: SignUpEmail());
            },
          ),
          GoRoute(
            path: AppRoute.signUpPassword.path,
            name: AppRoute.signUpPassword.name,
            builder: (context, state) {
              return const TestLayout(child: SignUpPassword());
            },
          ),
        ],
      ),
      GoRoute(
        path: AppRoute.home.path,
        name: AppRoute.home.name,
        builder: (context, state) {
          return const TestLayout(child: Home());
        },
      ),
    ],
  );
}
