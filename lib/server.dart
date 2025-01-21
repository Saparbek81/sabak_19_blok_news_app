import 'package:dio/dio.dart';
import 'package:sabak_19_blok_news_app/model.dart';

class ServiceData {
  static const String newsUrl =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=2d01e9e3d28d4189b48461be856e9655";
  Dio dio = Dio();

  Future<News?> fetchData() async {
    final response = await dio.get(newsUrl);
    if (response.statusCode == 200) {
      final data = response.data;
      final news = News.fromJson(data);
      return news;
    }
    return null;
  }
}
