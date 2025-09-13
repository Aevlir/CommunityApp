import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/utils/image_util/image_util.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/features/home/model/post_model/post_model.dart';

class ContentHeader extends StatelessWidget {
  final PostType postType;

  const ContentHeader({super.key, required this.postType});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: TestAppSizes.paddingSm,
      children: [
        Image.asset(
          ImageUtil.getCategoryImage(postType),
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
        TestText(
          text: postType.label,
          fontWeight: FontWeight.w600,
          fontSize: TestAppSizes.fontMd,
          color: TestColors.textColor,
        ),
      ],
    );
  }
}
