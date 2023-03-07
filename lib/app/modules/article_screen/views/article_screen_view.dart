import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_project/app/modules/article_screen/widget/article_card.dart';
import 'package:news_app_project/app/routes/app_pages.dart';
import 'package:skeletons/skeletons.dart';


import '../controllers/article_screen_controller.dart';

class ArticleScreenView extends GetView<ArticleScreenController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            'StarNews',
            style: TextStyle(color: Colors.black,fontSize: 14),
          ),
        ),
      ),
      body: Obx(() => SingleChildScrollView(
        child: controller.isLoading.value
            ? SkeletonListTile(hasSubtitle: true, padding: EdgeInsets.all(30),)
            : Column(
          children: [
            ...controller.listNews.reversed.map(
                  (item) => ArticlesCard(
                title: item.title,
                description: item.body,
                id: item.id.toString(),
              ),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ARTICLE_POST_SCREEN),
        backgroundColor: Color(0xFFD9D9D9),
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
