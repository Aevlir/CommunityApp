import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';

class HomeNews extends StatelessWidget {
  final String imageUrl;
  final bool isBreakingNews;
  final String headline;
  final String source;

  const HomeNews({
    super.key,
    required this.imageUrl,
    required this.isBreakingNews,
    required this.headline,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: TestAppSizes.paddingSm),
      padding: const EdgeInsets.all(TestAppSizes.paddingMd),
      height: 230,
      width: 260,
      decoration: BoxDecoration(
        color: isBreakingNews
            ? TestColors.breakingColor
            : TestColors.backgroundColor,
        borderRadius: BorderRadius.circular(TestAppSizes.radiusMd),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(TestAppSizes.radiusSm),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                if (isBreakingNews)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: TestAppSizes.paddingSm,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          TestAppSizes.radiusSm,
                        ),
                        color: TestColors.backgroundColor,
                      ),
                      child: TestText(
                        text: '🚨 Breaking News',
                        fontWeight: FontWeight.w500,
                        fontSize: TestAppSizes.fontSm,
                        color: TestColors.textColor,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          TestText(
            text:
                headline,
            fontWeight: FontWeight.w500,
            fontSize: TestAppSizes.fontLg,
            color: TestColors.textColor,
          ),
          TestText(
            text: source,
            fontWeight: FontWeight.normal,
            fontSize: TestAppSizes.fontSm,
            color: TestColors.textColor,
          ),
        ],
      ),
    );
  }
}
