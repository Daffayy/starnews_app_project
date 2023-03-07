import 'package:get/get.dart';

import '../controllers/post_article_screen_controller.dart';

class PostArticleScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostArticleScreenController>(
      () => PostArticleScreenController(),
    );
  }
}
