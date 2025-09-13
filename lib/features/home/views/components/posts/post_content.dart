import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/features/home/model/post_model/post_model.dart';
import 'package:test/features/home/views/components/posts/post_content_footer.dart';

class ContentPost extends StatelessWidget {
  final ContentModel data;

  const ContentPost({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final hasImage = data.imageUrl != null;
    final hasVideo = data.videoUrl != null;

    return Column(
      spacing: TestAppSizes.paddingSm,
      children: [
        if (hasImage)
          Row(
            spacing: TestAppSizes.paddingMd,
            children: [
              Flexible(
                child: TestText(
                  text: data.headline ?? '',
                  fontWeight: FontWeight.bold,
                  fontSize: TestAppSizes.fontLg,
                  color: TestColors.titleColor,
                  overflow: TextOverflow.visible,
                ),
              ),
              Expanded(child: Image.asset(data.imageUrl!, fit: BoxFit.cover)),
            ],
          ),
        if (hasVideo)
          Column(
            children: [
              TestText(
                text: data.headline ?? '',
                fontWeight: FontWeight.bold,
                fontSize: TestAppSizes.fontLg,
                color: TestColors.titleColor,
                overflow: TextOverflow.visible,
              ),
              Image.asset(data.videoUrl!, fit: BoxFit.cover),
            ],
          ),
        PostContentFooter(data: data),
      ],
    );
  }
}
