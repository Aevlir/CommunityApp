import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

enum PostType { news, community, publicService }

extension PostTypeX on PostType {
  String get label {
    switch (this) {
      case PostType.news:
        return 'News';
      case PostType.community:
        return 'Community';
      case PostType.publicService:
        return 'Public Service';
    }
  }
}

@freezed
abstract class PostModel with _$PostModel {
  const factory PostModel({
    ContentModel? contentModel,
    CommunityNewsModel? communityNewsModel,
    PostType? postType,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  // Static sample data for posts.
  static final samplePosts = [
    const PostModel(
      postType: PostType.news,
      contentModel: ContentModel(
        imageUrl: 'assets/images/test_chinese.png',
        source: 'newspost',
        timePosted: 'Just now',
        headline: 'News Celebrating Prosperity: Chinese New Year 2025 Kicks Off with Joy and Tradition',
      ),
    ),
    const PostModel(
      postType: PostType.community,
      communityNewsModel: CommunityNewsModel(
        imageUrl: 'assets/images/test_video2.png',
        timePosted: '4h ago',
        caption: 'Our small business just reached a huge milestone: 5,000 happy customer',
        profileImageUrl: 'assets/images/test_profile_pic.png',
        name: 'Joshua Peralta',
        likes: 7904,
        comments: 7904,
        shares: 7904,
      ),
    ),
    const PostModel(
      postType: PostType.news,
      contentModel: ContentModel(
        videoUrl: 'assets/images/test_video1.png',
        source: 'newspost',
        timePosted: 'Just now',
        headline: '2025 Industry Outlook: Key Trends Shaping the Future of Business',
      ),
    ),
    const PostModel(
      postType: PostType.publicService,
      contentModel: ContentModel(
        videoUrl: 'assets/images/test_cavite.png',
        source: 'Bacoor, Cavite',
        timePosted: 'Just now',
        headline: 'Stay Safe: Classes Canceled in Cavite Due to Heavy Rainfall',
      ),
    ),
  ];
}

@freezed
abstract class ContentModel with _$ContentModel {
  const factory ContentModel({
    String? imageUrl,
    String? videoUrl,
    String? source,
    String? timePosted,
    String? headline,
  }) = _ContentModel;

  factory ContentModel.fromJson(Map<String, dynamic> json) =>
      _$ContentModelFromJson(json);
}

@freezed
abstract class PublicServiceModel with _$PublicServiceModel {
  const factory PublicServiceModel({
    String? imageUrl,
    String? videoUrl,
    String? source,
    String? timePosted,
    String? headline,
  }) = _PublicServiceModel;

  factory PublicServiceModel.fromJson(Map<String, dynamic> json) =>
      _$PublicServiceModelFromJson(json);
}

@freezed
abstract class CommunityNewsModel with _$CommunityNewsModel {
  const factory CommunityNewsModel({
    String? imageUrl,
    String? videoUrl,
    String? timePosted,
    String? caption,
    String? profileImageUrl,
    String? name,
    int? likes,
    int? comments,
    int? shares,
  }) = _CommunityNewsModel;

  factory CommunityNewsModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityNewsModelFromJson(json);
}
