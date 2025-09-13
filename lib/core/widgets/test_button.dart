import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';

class TestButton extends StatelessWidget {
  const TestButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.isLoading,
    required this.isDisabled,
  });

  final VoidCallback onPressed;
  final String text;
  final bool isLoading;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisabled || isLoading ? null : onPressed,
      child: Container(
        decoration: BoxDecoration(
          gradient: isDisabled
              ? LinearGradient(
                  colors: [TestColors.disabledColor, TestColors.disabledColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : LinearGradient(
                  colors: [TestColors.accentColor, TestColors.primaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          borderRadius: BorderRadius.circular(TestAppSizes.radiusXl),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: isLoading
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: TestColors.primaryColor,
                      strokeWidth: 2,
                    ),
                  )
                : TestText(
                    text: text,
                    color: TestColors.backgroundColor,
                    fontSize: TestAppSizes.fontMd,
                    fontWeight: FontWeight.w500,
                  ),
          ),
        ),
      ),
    );
  }
}
