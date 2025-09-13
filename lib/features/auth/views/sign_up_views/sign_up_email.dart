import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test/core/routes/constants/route_paths.dart';
import 'package:test/core/routes/route_notifier.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_button.dart';
import 'package:test/core/widgets/test_sub_layout.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/features/auth/views/login_views/components/login_fields.dart';
import 'package:test/features/auth/view_models/error_notifier/error_notififer.dart';
import 'package:test/features/auth/view_models/user_notifier/user_notifier.dart';

class SignUpEmail extends HookConsumerWidget {
  const SignUpEmail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // State & Notifiers
    final route = ref.read(testRouteProvider);
    final errorState = ref.watch(errorNotifierProvider);
    final userNotifier = ref.read(userNotifierProvider.notifier);

    // Controllers
    final emailController = useTextEditingController();

    return TestSubLayout(
      verticalPadding: TestAppSizes.paddingXl,
      horizontalPadding: TestAppSizes.paddingXl,
      isTopSafe: true,
      isBottomSafe: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [
          TestText(
            text: 'Sign Up',
            fontWeight: FontWeight.w600,
            fontSize: TestAppSizes.fontXxl,
            color: TestColors.textColor,
          ),
          AuthField(
            label: 'Mobile Number or Email',
            subLabel: '*',
            isPassword: false,
            errorText: errorState.errorEmail,
            hintText: 'Enter your Mobile number or Email',
            controller: emailController,
            onChanged: (value) {
              ref.read(errorNotifierProvider.notifier).clearEmailError();
              userNotifier.updateUserData(email: value);
            },
          ),
          TestButton(
            onPressed: () {
              route.push(AppRoute.signUpPassword.path);
            },
            text: 'Next',
            isLoading: false,
            isDisabled:
                errorState.errorEmail != null || emailController.text.isEmpty,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.center,
              child: TestText.rich(
                fontSize: TestAppSizes.fontSm,
                color: TestColors.labelColor,
                spans: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: TestColors.infoColor),
                  ),

                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: TestColors.primaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
