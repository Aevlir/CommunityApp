import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test/core/routes/constants/route_paths.dart';
import 'package:test/core/routes/route_notifier.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/shared/constants/regex/regex.dart';
import 'package:test/core/widgets/test_button.dart';
import 'package:test/core/widgets/test_sub_layout.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/features/auth/view_models/auth_notifier/auth_notifier.dart';
import 'package:test/features/auth/views/login_views/components/agreements.dart';
import 'package:test/features/auth/views/login_views/components/login_fields.dart';
import 'package:test/features/auth/view_models/error_notifier/error_notififer.dart';
import 'package:test/features/auth/view_models/user_notifier/user_notifier.dart';

class SignUpPassword extends HookConsumerWidget {
  const SignUpPassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // State & Notifiers
    final route = ref.read(testRouteProvider);
    final errorState = ref.watch(errorNotifierProvider);
    final userState = ref.watch(userNotifierProvider);
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
            text: 'Create Password',
            fontWeight: FontWeight.w600,
            fontSize: TestAppSizes.fontXxl,
            color: TestColors.textColor,
          ),
          AuthField(
            label: 'Password',
            subLabel: '*',
            isPassword: false,
            errorText: errorState.errorPassword,
            hintText: 'Enter your Password here',
            controller: emailController,
            onChanged: (value) {
              ref.read(errorNotifierProvider.notifier).clearPasswordError();
              userNotifier.updateUserData(password: value);
            },
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              buildPasswordCheckList(
                text: 'Minimum length: 8 characters.',
                isChecked: (userState.password?.length ?? 0) >= 8,
              ),
              buildPasswordCheckList(
                text: '1 uppercase letter.',
                isChecked:
                    userState.password != null &&
                    userState.password!.contains(TestRegEx.uppercaseLetter),
              ),
              buildPasswordCheckList(
                text: 'Alphanumeric',
                isChecked:
                    userState.password != null &&
                    TestRegEx.alphanumeric.hasMatch(userState.password!),
              ),
              buildPasswordCheckList(
                text: 'Accepted special characters: ! @ # \$ & -',
                isChecked:
                    userState.password != null &&
                    userState.password!.contains(
                      TestRegEx.passwordAllowedChars,
                    ),
              ),
            ],
          ),
          TestButton(
            onPressed: () async {
              await ref
                  .read(authNotifierProvider.notifier)
                  .signUp(
                    email: userState.email ?? '',
                    password: userState.password ?? '',
                    onSignUp: () {
                      route.go(AppRoute.home.path);
                    },
                  );
            },
            text: 'Sign Up',
            isLoading: false,
            isDisabled: errorState.errorPassword != null,
          ),
          Agreements(value: false, onChanged: (bool? value) {}),
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

  Row buildPasswordCheckList({required String text, bool isChecked = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 10,
      children: [
        Icon(
          Icons.check,
          color: isChecked ? TestColors.primaryColor : TestColors.infoColor,
          size: TestAppSizes.iconSm,
        ),
        Expanded(
          child: TestText(
            overflow: TextOverflow.visible,
            text: text,
            fontWeight: FontWeight.w400,
            fontSize: TestAppSizes.fontSm,
            color: TestColors.infoColor,
          ),
        ),
      ],
    );
  }
}
