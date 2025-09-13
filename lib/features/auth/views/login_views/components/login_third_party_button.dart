import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';

class LoginThirdPartyButton extends StatelessWidget {
  final String iconPath;
  final String buttonText;
  const LoginThirdPartyButton({
    super.key,
    required this.iconPath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: TestAppSizes.paddingMd),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TestAppSizes.fontSm),
        border: Border.all(color: TestColors.primaryColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: TestAppSizes.lg,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath, height: 20, width: 20),
          TestText(
            text: 'Continue with $buttonText',
            fontSize: TestAppSizes.fontMd,
            color: TestColors.textColor,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
