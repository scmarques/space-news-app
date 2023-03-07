import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class CustomArticleListCard extends StatelessWidget {
  final ArticleModel article;
  const CustomArticleListCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Card(
          child: Material(
        elevation: 18,
        shape: const RoundedRectangleBorder(),
        clipBehavior: Clip.antiAlias,
        child: Image.network(
          article.imageUrl,
          width: 120,
          height: 100,
          fit: BoxFit.fill,
        ),
      )),
      Expanded(
        child: Container(
          decoration: const BoxDecoration(color: Color.fromARGB(255, 248, 246, 246)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 12),
            child: Column(children: [
              Text(
                article.title,
                softWrap: true,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(Icons.newspaper, color: Colors.black12),
                    Text(
                      article.newsSite,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      )
    ]);
  }
}
