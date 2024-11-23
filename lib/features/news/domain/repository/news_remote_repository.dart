
import '../models/news_main_data.dart';

abstract class NewsRemoteRepository {
  Future<NewsMainData?> fetchNewsData(List<String> countries);
}