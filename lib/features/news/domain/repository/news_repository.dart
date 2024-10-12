
import '../models/news_main_data.dart';

abstract class NewsRepository {
  Future<NewsMainData?> fetchNewsData({required String query});
}