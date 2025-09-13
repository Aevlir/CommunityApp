import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/core/widgets/test_textfield.dart';

class AuthField extends StatefulWidget {
  const AuthField({
    super.key,
    this.hintText,
    this.subLabel,
    this.errorText,
    required this.label,
    required this.isPassword,
    required this.controller,
    required this.onChanged,
  });

  final String label;
  final String? subLabel;
  final bool isPassword;
  final String? hintText;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String? errorText;

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: TestAppSizes.sm,
      children: [
        TestText.rich(
          fontSize: TestAppSizes.fontMd,
          color: widget.errorText != null
              ? TestColors.errorColor
              : TestColors.labelColor,
          spans: [
            TextSpan(text: widget.label),
            TextSpan(
              text: '${widget.subLabel}',
              style: TextStyle(color: TestColors.errorColor),
            ),
          ],
        ),

        TestTextField(
          errorText: widget.errorText,
          hintText: '${widget.hintText}',
          isPassword: widget.isPassword,
          controller: widget.controller,
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}
