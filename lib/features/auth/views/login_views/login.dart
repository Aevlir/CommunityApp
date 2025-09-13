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
import 'package:test/features/auth/views/login_views/components/agreements.dart';
import 'package:test/features/auth/views/login_views/components/login_fields.dart';
import 'package:test/features/auth/views/login_views/components/login_third_party_button.dart';
import 'package:test/features/auth/view_models/error_notifier/error_notififer.dart';
import 'package:test/features/auth/view_models/user_notifier/user_notifier.dart';

class Login extends HookConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // State & Notifiers
    final routeState = ref.read(testRouteProvider);
    final errorState = ref.watch(errorNotifierProvider);
    final userNotifier = ref.read(userNotifierProvider.notifier);

    // Controllers
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    // Functions
    void navigateToSignUp() {
      routeState.go(AppRoute.signUp.path);
    }

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
            text: 'Login',
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
          AuthField(
            label: 'Password',
            subLabel: '*',
            isPassword: true,
            hintText: 'Enter your password here',
            controller: passwordController,
            errorText: errorState.errorPassword,
            onChanged: (value) {
              debugPrint('Password changed: $value');
              ref.read(errorNotifierProvider.notifier).clearPasswordError();
              userNotifier.updateUserData(password: value);
            },
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TestText.rich(
              fontSize: TestAppSizes.fontSm,
              color: TestColors.hintColor,
              spans: [
                TextSpan(
                  text: 'Forgot Password?',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: TestColors.primaryColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          TestButton(
            onPressed: () {},
            text: 'Login',
            isLoading: false,
            isDisabled:
                errorState.errorEmail != null ||
                errorState.errorPassword != null ||
                emailController.text.isEmpty ||
                passwordController.text.isEmpty,
          ),
          Agreements(value: false, onChanged: (bool? value) {}),
          GestureDetector(
            onTap: () {
              navigateToSignUp();
            },
            child: Align(
              alignment: Alignment.center,
              child: TestText.rich(
                fontSize: TestAppSizes.fontSm,
                color: TestColors.hintColor,
                spans: [
                  const TextSpan(text: 'Don\'t have an account? '),
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: TestColors.primaryColor,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox.shrink(),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12,
            children: [
              LoginThirdPartyButton(
                iconPath: 'assets/icons/test_google_icon.png',
                buttonText: 'Google      ',
              ),
              LoginThirdPartyButton(
                iconPath: 'assets/icons/test_facebook_icon.png',
                buttonText: 'Facebook',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
