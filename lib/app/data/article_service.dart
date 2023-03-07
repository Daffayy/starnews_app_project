
import 'package:get/get.dart';
import '../modules/article_screen/models/article_models.dart';


class ArticleService {
  final _connect = Get.find<GetConnect>();

  Future<ArticleScreen> getArticle() async {
    final response = await _connect.get('posts');
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}

