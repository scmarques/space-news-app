import '../models/articles_model.dart';

abstract class NewsRepository {
  Future<List<ArticleModel>> getArticles();
}
