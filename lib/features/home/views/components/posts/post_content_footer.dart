import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/features/home/model/post_model/post_model.dart';

class PostContentFooter extends StatelessWidget {
  final ContentModel data;

  const PostContentFooter({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TestText.rich(
          fontWeight: FontWeight.w500,
          fontSize: TestAppSizes.fontSm,
          color: TestColors.primaryColor,
          spans: [
            TextSpan(text: '${data.source}'),
            TextSpan(
              text: ' · ${data.timePosted}',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: TestAppSizes.fontSm,
                color: TestColors.hintColor,
              ),
            ),
          ],
        ),
        TestText(
          text: '· · ·',
          fontWeight: FontWeight.bold,
          fontSize: TestAppSizes.fontLg,
          color: TestColors.hintColor,
        ),
      ],
    );
  }
}
