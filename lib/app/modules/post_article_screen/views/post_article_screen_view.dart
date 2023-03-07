import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/post_article_screen_controller.dart';
import '../widget/post_article_card.dart';

class PostArticleScreenView extends GetView<PostArticleScreenController> {
  const PostArticleScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED) ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEDEDED),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, ), onPressed: () {
          Get.offNamed(Routes.ARTICLE_SCREEN);
        },
          color: Color(0xff000000),
        ),
        title: Text(
          'StarNews',
          style: TextStyle(fontSize: 14, color: Color(0xff000000),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ArticlesPostCard(),
    );
  }
}
