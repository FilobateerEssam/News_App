import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Components/News_Tile.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/news_Services.dart';

class News_ListView extends StatefulWidget {
  const News_ListView({
    super.key,
  });

  @override
  State<News_ListView> createState() => _News_ListViewState();
}

class _News_ListViewState extends State<News_ListView> {
// We will make the list here to solve Probelm of Scope
  List<ArticleModel> articles = [];

  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Get API because it the first stage before build
    GetNews_asyncc();
  }

  Future<void> GetNews_asyncc() async {
    // Fetch data
    articles = await NewsServices(Dio()).getNews();

    // after Fetch
    isLoading = false;

    // Rebuild
    setState(() {
      // We need to call setState to update the UI
    });
  }

// indecator
  @override
  Widget build(BuildContext context) {
    // isLoading            true                   : false
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22.0),
              child: NewsTile(
                articleModel: articles[index],
              ),
            );
          }));

    // ListView.builder(
    //   shrinkWrap: true,
    //   physics: NeverScrollableScrollPhysics(),
    //   // physics: const BouncingScrollPhysics(),
    //   itemCount: 10,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 22),
    //       child: NewsTile(),
    //     );
    //   },
    // );
  }
}
