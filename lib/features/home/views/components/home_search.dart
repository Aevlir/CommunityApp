import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/features/auth/view_models/auth_notifier/auth_notifier.dart';

class HomeSearch extends HookConsumerWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    void onLogout() {
      ref
          .read(authNotifierProvider.notifier)
          .logout(
            onLogout: () {
              context.go('/login');
            },
          );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TestAppSizes.paddingXl),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: TestAppSizes.containerSm,
              decoration: BoxDecoration(
                color: TestColors.containerColor,
                borderRadius: BorderRadius.circular(TestAppSizes.radiusSm),
              ),
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              onLogout();
            },
            child: Image.asset(
              'assets/icons/test_notifications.png',
              width: TestAppSizes.iconMd,
              height: TestAppSizes.iconMd,
            ),
          ),
        ],
      ),
    );
  }
}
