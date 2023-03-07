import 'package:flutter/material.dart';
import 'package:news_app/controllers/news_controller.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/repository/news_repository_impl.dart';
import 'package:news_app/service/service_impl.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/custom_article_list_card.dart';
import '../widgets/header_view.dart';
import '../widgets/main_article_list_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NewsController _controller =
      NewsController(NewsRepositoryImpl(DioServiceImpl()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(),
        bottomNavigationBar: const BottomNavBar(index: 0),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                const HeaderView(),
                ValueListenableBuilder<List<ArticleModel>>(
                    valueListenable: _controller.articles,
                    builder: (_, articles, __) {
                      return articles != null && articles.isNotEmpty
                          ? Column(
                              children: [
                                MainArticleListCard(
                                  article: articles.first,
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Colors.redAccent,
                                ),
                                ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: ((context, index) =>
                                      CustomArticleListCard(
                                          article: articles[index + 1])),
                                  itemCount: (articles.length - 1),
                                  separatorBuilder: (_, __) => const Divider(),
                                ),
                              ],
                            )
                          : Container();
                    }),
              ],
            ),
          ),
        ));
  }
}
