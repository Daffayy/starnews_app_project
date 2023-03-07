
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import '../modules/article_screen/models/article_models.dart';


class ArticleService {
  final _connect = Get.find<GetConnect>();

  Future<List> getNews() async {
    final response = await _connect.get('posts');
    Logger().d(response);
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}

