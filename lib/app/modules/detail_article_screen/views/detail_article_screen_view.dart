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
      body: Container(
        width: Get.width,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Color(0xffd9d9d9),borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
              offset: Offset(0.0, 0.75)
            ),
          ]
        ),
        child: Obx(()=> ListTile(
          title: Text(controller.detailNews.value.title ?? '',style: TextStyle
            (fontWeight: FontWeight.bold,fontSize: 18)),
          subtitle: Text(controller.detailNews.value.body ?? '',style:
          TextStyle(color: Colors.black, fontSize: 16)),
        )),
      ),
    );
  }
}
