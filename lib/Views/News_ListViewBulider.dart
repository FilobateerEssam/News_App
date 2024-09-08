
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/news_Services.dart';
import 'package:news_app/Views/News_ListView.dart';

class New_ListViewBuilder extends StatefulWidget {
  const New_ListViewBuilder({
    super.key,
  });

  @override
  State<New_ListViewBuilder> createState() => _New_ListViewBuilderState();
}

class _New_ListViewBuilderState extends State<New_ListViewBuilder> {
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

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty ? News_ListView(
            articles: articles,
          ) : SliverToBoxAdapter(
            child: Text(
              'oops there are an Error , Try Later'
            ),
          );
  }
}
