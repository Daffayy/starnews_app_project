import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:news_app_project/app/data/article_service.dart';
import 'package:news_app_project/app/data/detail_article_service.dart';

import '../models/article_models.dart';

class ArticleScreenController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<ListNewsModel> listNews = <ListNewsModel>[].obs;
  final newsService = ArticleService();

  @override
  void onInit() {
    super.onInit();
    getListNews();
  }

  Future<void> getListNews() async {
    isLoading(true);
    try {
      final response = await newsService.getNews();

      response.map((v) {
        // print(v);
        Logger().d(v);
        final news = ListNewsModel.fromJson(v);
        listNews.add(news);
      }).toList();
      isLoading(false);
    } catch (e) {
      isLoading(false);
      print(e.toString());
    }
  }
}
