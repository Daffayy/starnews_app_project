import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_project/app/modules/article_screen/widget/article_card.dart';
import 'package:news_app_project/app/routes/app_pages.dart';

import '../controllers/detail_article_screen_controller.dart';

class DetailArticleScreenView extends GetView<DetailArticleScreenController> {
  const DetailArticleScreenView({Key? key}) : super(key: key);
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
          'DetailNews',
          style: TextStyle(fontSize: 14, color: Color(0xff000000),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Obx(()=> ArticlesCard(title: '',description: '' ,id: '' ,)),
    );
  }
}
