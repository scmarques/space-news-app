import 'package:news_app/models/articles_model.dart';
import 'package:news_app/repository/news_repository.dart';
import '../service/service.dart';
import '../utils/api_utils.dart';

class NewsRepositoryImpl implements NewsRepository {
  final DioService _dioService;
  NewsRepositoryImpl(this._dioService);

  @override
  Future<List<ArticleModel>> getArticles() async {
    var res = await _dioService.getDio().get(API.REQUEST_ARTICLES);
    if (res.statusCode == 200) {
      List<ArticleModel> articles = List.from(res.data)
          .map(((item) => ArticleModel.fromJson(item)))
          .toList();
      return articles;
    } else {
      throw ("Can't reach articles");
    }
  }
}
