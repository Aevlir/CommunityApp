import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/features/home/model/post_model/post_model.dart';
import 'package:test/features/home/views/components/posts/post_community.dart';
import 'package:test/features/home/views/components/posts/post_content.dart';
import 'package:test/features/home/views/components/posts/post_content_header.dart';

class PostWidget extends StatelessWidget {
  final PostModel postData;

  const PostWidget({super.key, required this.postData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: TestAppSizes.paddingLg),
      padding: const EdgeInsets.all(TestAppSizes.paddingMd),
      decoration: BoxDecoration(
        color: TestColors.backgroundColor,
        borderRadius: BorderRadius.circular(TestAppSizes.radiusMd),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: TestAppSizes.paddingMd,
        children: [
          ContentHeader(postType: postData.postType!),
          if (postData.postType == PostType.community)
            CommunityPost(data: postData.communityNewsModel!)
          else
            ContentPost(data: postData.contentModel!),
        ],
      ),
    );
  }
}
