
import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/features/home/model/post_model/post_model.dart';
import 'package:test/features/home/views/components/posts/post_community_header.dart';
import 'package:test/features/home/views/components/posts/post_community_stats.dart';

class CommunityPost extends StatelessWidget {
  final CommunityNewsModel data;

  const CommunityPost({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        CommunityHeader(data: data),
        TestText(
          text: data.caption!,
          fontWeight: FontWeight.normal,
          fontSize: TestAppSizes.fontMd,
          color: TestColors.titleColor,
        ),
        if (data.imageUrl != null)
          Image.asset(data.imageUrl!, fit: BoxFit.cover),
        CommunityStats(data: data),
      ],
    );
  }
}
