import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:news_app_project/app/data/detail_article_service.dart';
import 'package:news_app_project/app/modules/detail_article_screen/models/detail_article_models.dart';

class DetailArticleScreenController extends GetxController {
  final dio = Dio();
  RxBool isLoading = false.obs;
  String id = '';
  Rx<DetailNewsModel> detailNews = DetailNewsModel().obs;
  final detailArticleService = DetailArticleService();

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    id = args['id'];
    print(args);
    getDetailNews();
  }
  getDetailNews() async {
    isLoading(true);
    try {
      final response = await detailArticleService.getDetailNews(id: id);
      final res = DetailNewsModel.fromJson(response);
      detailNews(res);
    } catch (e) {
      isLoading(false);
      print(e);
      Get.snackbar('Error', e.toString());
    }
  }

}
