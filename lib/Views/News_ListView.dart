import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Components/News_Tile.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/news_Services.dart';

class News_ListView extends StatelessWidget {
// We will make the list here to solve Probelm of Scope
  final List<ArticleModel> articles;

  const News_ListView({super.key, required this.articles});

// indecator
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22.0),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
