import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:news_app_project/app/data/article_service.dart';
import 'package:news_app_project/app/data/detail_article_service.dart';

import '../models/article_models.dart';

class ArticleScreenController extends GetxController {
  // RxBool isLoading = false.obs;
  // RxInt id = 0.obs;
  // RxInt userId = 0.obs;
  // String body = '';
  // String title = '';
  // // int userId;
  // // int id;
  // // String title;
  // // String body;
  // final articleService = ArticleService();
  //
  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  //   getListArticle();
  // }
  //
  // getListArticle() async {
  //   isLoading(true);
  //   try {
  //     var response = await articleService.getArticle();
  //     id.obs(response.userId as RxInt?);
  //     isLoading(false);
  //   }catch (e){
  //     isLoading(false);
  //     Get.snackbar('Error', e.toString());
  //   }
  // }
  final dio = Dio();
  RxBool isLoading = false.obs;
  RxList<ArticleScreen> listArticle = <ArticleScreen>[].obs;
  final articleService = ArticleService();

  @override
  void onInit() {
    super.onInit();
    getListArticle();
  }

   getListArticle() async {
    isLoading(true);
    try{
      final response = await ArticleScreenController().getListArticle();
      response.map((v){
        print(v);
        final news = ArticleScreen.fromJson(v as Map<String, dynamic>);
        listArticle.add(news);
      }).toList();
      isLoading(false);
    }catch (e){
      isLoading(false);
      print(e.toString());
    }
   }
  
}
