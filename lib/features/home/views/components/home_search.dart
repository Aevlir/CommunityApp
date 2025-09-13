import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';

class HomeSearch extends HookWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
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
          Image.asset(
            'assets/icons/test_notifications.png',
            width: TestAppSizes.iconMd,
            height: TestAppSizes.iconMd,
          ),
        ],
      ),
    );
  }
}
