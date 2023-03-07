import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_project/app/modules/article_screen/widget/article_card.dart';
import 'package:news_app_project/app/routes/app_pages.dart';


import '../controllers/article_screen_controller.dart';

class ArticleScreenView extends GetView<ArticleScreenController> {
  final ArticleScreenController articleScreenController = Get.put
    (ArticleScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEDEDED),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
          onPressed: () {
            Get.offNamed(Routes.SPLASH_SCREEN);
          },
          color: Color(0xff000000),
        ),
        title: Text(
          'StarNews',
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff000000),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Obx(() => SingleChildScrollView(
            child: Column(
              children: [
                ...articleScreenController.listArticle.reversed.map((element) =>
                    ArticlesCard(
                        title: element.title,
                        description: element.body,
                        id: element.id.toString())),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffD9D9D9),
        onPressed: () {
          Get.offNamed(Routes.ARTICLE_POST_SCREEN);
        },
        child: Icon(Icons.add),
        foregroundColor: Color(0xff000000),
      ),
    );
  }
}
