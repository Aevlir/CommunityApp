import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/features/home/model/post_model/post_model.dart';

class CommunityStats extends StatelessWidget {
  final CommunityNewsModel data;

  const CommunityStats({super.key, required this.data});

  Widget _stat(String icon, String value) => Row(
    spacing: 4,
    children: [
      Image.asset(icon, width: 24, height: 24),
      TestText(
        text: value,
        fontWeight: FontWeight.w500,
        fontSize: TestAppSizes.fontSm,
        color: TestColors.hintColor,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        _stat('assets/icons/test_likes.png', '${data.likes}'),
        _stat('assets/icons/test_comments.png', '${data.comments}'),
        _stat('assets/icons/test_saved.png', '${data.shares}'),
      ],
    );
  }
}
