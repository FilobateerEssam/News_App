import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews() async {
    return await Future.delayed(const Duration(seconds: 3), () async {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=4a9d22b0f56c4cb195b65a2a5fdac802');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      // // Filter articles with non-null urlToImage
      // List articlesWithImages = response.data['articles']
      //     .where((article) => article['urlToImage'] != null)
      //     .toList();

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description']);
        articlesList.add(articleModel);
      }
      print(articlesList);
      return articlesList;
    });
  }
}
