import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_news_model.freezed.dart';
part 'featured_news_model.g.dart';

@freezed
abstract class FeaturedNewsModel with _$FeaturedNewsModel {
  const factory FeaturedNewsModel({
    String? imageUrl,
    String? source,
    String? headline,
    @Default(false) bool? isBreakingNews,
  }) = _FeaturedNewsModel;

  factory FeaturedNewsModel.fromJson(Map<String, dynamic> json) =>
      _$FeaturedNewsModelFromJson(json);

  // Just an example static data.
  static const featuredNews = [
    FeaturedNewsModel(
      imageUrl: 'assets/images/test_news1.jpg',
      source: 'Acme News · 1h ago',
      headline: '🚨 Breaking News: Massive Fire Engulfs Warehouse in Cavite 🔥',
      isBreakingNews: true,
    ),
    FeaturedNewsModel(
      imageUrl: 'assets/images/test_news2.jpg',
      source: 'Acme News · 2h ago',
      headline: 'Kindness Project Sparks Global Movement',
      isBreakingNews: false,
    ),
    FeaturedNewsModel(
      imageUrl: 'assets/images/test_news2.jpg',
      source: 'Acme News · 2h ago',
      headline: 'Kindness Project Sparks Global Movement',
      isBreakingNews: false,
    ),
  ];
}
