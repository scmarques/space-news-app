import 'package:flutter/cupertino.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/repository/news_repository.dart';

class NewsController {
  final NewsRepository _newsRepository;
  NewsController(this._newsRepository) {
    fetch();
  }

  ValueNotifier<List<ArticleModel>> articles = ValueNotifier(<ArticleModel>[]);

  fetch() async {
    articles.value = await _newsRepository.getArticles();
  }
}
