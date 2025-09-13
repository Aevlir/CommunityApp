import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/features/home/model/post_model/post_model.dart';

class CommunityHeader extends StatelessWidget {
  final CommunityNewsModel data;

  const CommunityHeader({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: TestAppSizes.paddingSm,
          children: [
            Image.asset(
              data.profileImageUrl!,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TestText(
                  text: data.name!,
                  fontWeight: FontWeight.bold,
                  fontSize: TestAppSizes.fontMd,
                  color: TestColors.titleColor,
                ),
                TestText(
                  text: data.timePosted!,
                  fontWeight: FontWeight.normal,
                  fontSize: TestAppSizes.fontSm,
                  color: TestColors.titleColor,
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(TestAppSizes.paddingSm),
          decoration: BoxDecoration(
            color: TestColors.primaryColor,
            borderRadius: BorderRadius.circular(TestAppSizes.radiusSm),
          ),
          child: TestText(
            text: '+ Follow',
            fontWeight: FontWeight.w500,
            fontSize: TestAppSizes.fontSm,
            color: TestColors.backgroundColor,
          ),
        ),
      ],
    );
  }
}
