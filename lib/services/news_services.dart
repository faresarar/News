import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  getNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=8002fc5d48754478a73b438b21adf85a&country=dz&category=general");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    print(articles);
    for (var article in articles) {
      print(article['author']);
    }
  }
}
