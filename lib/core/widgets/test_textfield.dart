import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';

class TestTextField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final ValueChanged<String> onChanged;
  final String? errorText;

  const TestTextField({
    super.key,
    this.isPassword = false,
    this.controller,
    this.keyboardType,
    required this.hintText,
    required this.onChanged,
    this.errorText,
  });

  @override
  State<TestTextField> createState() => _TestTextFieldState();
}

class _TestTextFieldState extends State<TestTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      style: GoogleFonts.poppins(
        fontSize: TestAppSizes.fontMd,
        color: widget.errorText != null
            ? TestColors.errorColor
            : TestColors.textColor,
      ),
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        errorText: widget.errorText,
        errorMaxLines: 2,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(TestAppSizes.radiusSm),
          borderSide: BorderSide(
            color: widget.errorText != null
                ? TestColors.errorColor
                : TestColors.borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(TestAppSizes.radiusSm),
          borderSide: BorderSide(
            color: widget.errorText != null
                ? TestColors.errorColor
                : TestColors.borderColor,
            width: 2.0,
          ),
        ),
        hintStyle: GoogleFonts.poppins(
          fontSize: TestAppSizes.fontMd,
          color: TestColors.hintColor,
        ),
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(TestAppSizes.radiusSm),
          borderSide: BorderSide(
            color: widget.errorText != null
                ? TestColors.errorColor
                : TestColors.borderColor,
          ),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: TestColors.hintColor,
                  size: TestAppSizes.iconSm,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
