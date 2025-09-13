import 'package:test/features/home/model/post_model/post_model.dart';

class ImageUtil {
  static String getCategoryImage(PostType type) {
    if (type == PostType.news) {
      return 'assets/icons/test_news.png';
    } else if (type == PostType.community) {
      return 'assets/icons/test_community.png';
    } else if (type == PostType.publicService) {
      return 'assets/icons/test_public.png';
    } else {
      return 'assets/icons/test_news.png';
    }
  }

  static String getPostImage(PostType type) {
    if (type == PostType.news) {
      return 'assets/images/test_chinese.png';
    } else if (type == PostType.community) {
      return 'assets/images/test_video1.png';
    } else if (type == PostType.publicService) {
      return 'assets/images/test_cavite.png';
    } else {
      return 'assets/images/test_news.png';
    }
  }
}
