import 'package:newsify/features/news/presentation/models/news_data_model.dart';

abstract class NewsLocalRepository {
  Stream<List<NewsDataModel>?> get newsListStream;

  List<NewsDataModel>? getNewsList();

  void saveNewsList(List<NewsDataModel>? newsList);
}
