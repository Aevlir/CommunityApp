import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';
import 'package:test/core/widgets/test_text.dart';
import 'package:test/features/home/model/featured_news_model/featured_news_model.dart';
import 'package:test/features/home/views/components/featured/featured_home_news.dart';

class FeaturedNewsWidget extends StatelessWidget {
  const FeaturedNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: TestAppSizes.paddingLg,
            vertical: TestAppSizes.paddingMd,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TestText(
                text: 'Featured News',
                fontWeight: FontWeight.w600,
                fontSize: TestAppSizes.fontLg,
                color: TestColors.titleColor,
              ),
              TestText(
                text: 'See More',
                fontWeight: FontWeight.normal,
                fontSize: TestAppSizes.fontSm,
                color: TestColors.titleColor,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: FeaturedNewsModel.featuredNews.length,
            itemBuilder: (context, index) {
              final news = FeaturedNewsModel.featuredNews[index];
              return HomeNews(
                source: '${news.source}',
                headline: '${news.headline}',
                imageUrl: '${news.imageUrl}',
                isBreakingNews: index == 0,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: TestAppSizes.paddingSm),
          child: DotsIndicator(
            dotsCount: FeaturedNewsModel.featuredNews.length,
            animate: true,
            decorator: DotsDecorator(
              color: TestColors.inActiveColor,
              activeColor: TestColors.hintColor,
            ),
          ),
        ),
      ],
    );
  }
}
