import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Created this global widget
// to maintain consistency (usage og GoogleFonts) through the app
// and avoid code repetition

class TestText extends StatelessWidget {
  const TestText({
    super.key,
    this.overflow,
    this.hasUnderline,
    this.textAlign,
    this.letterSpacing,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    required this.color,
  }) : spans = null,
       isRich = false;

  const TestText.rich({
    super.key,
    this.overflow,
    this.textAlign,
    this.spans,
    required this.fontSize,
    required this.color,
    this.fontWeight,
    this.letterSpacing,
  }) : text = '',
       hasUnderline = false,
       isRich = true;

  // Common properties
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double fontSize;
  final double? letterSpacing;
  final Color color;
  final FontWeight? fontWeight;

  // For normal text
  final String text;
  final bool? hasUnderline;

  // For rich text
  final List<InlineSpan>? spans;
  final bool isRich;

  @override
  Widget build(BuildContext context) {
    final baseStyle = GoogleFonts.poppins(
      fontSize: fontSize,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color,
    );

    if (isRich && spans != null) {
      return RichText(
        textAlign: textAlign ?? TextAlign.start,
        overflow: overflow ?? TextOverflow.ellipsis,
        text: TextSpan(style: baseStyle, children: spans),
      );
    } else {
      return Text(
        text,
        overflow: overflow ?? TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.start,
        style: baseStyle.copyWith(
          decoration: hasUnderline == true
              ? TextDecoration.underline
              : TextDecoration.none,
        ),
      );
    }
  }
}
