import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=8002fc5d48754478a73b438b21adf85a&country=dz&category=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (error) {
      return [];
    }
  }
}
