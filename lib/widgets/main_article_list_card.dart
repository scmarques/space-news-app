import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class MainArticleListCard extends StatelessWidget {
  final ArticleModel article;
  const MainArticleListCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Card(
            child: Material(
          elevation: 18,
          child: Image.network(
            article.imageUrl,
            width: 350,
            height: 220,
            fit: BoxFit.fill,
          ),
        )),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 0, 8.0),
          child: Column(children: [
            Text(
              article.title,
              softWrap: true,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Icon(Icons.newspaper, color: Colors.black12),
                Text(
                  article.newsSite,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
              ],
            )
          ]),
        ),
      ]),
    );
  }
}
