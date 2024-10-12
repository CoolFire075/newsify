
import 'package:newsify/features/news/domain/repository/news_repository.dart';

import 'models/news_main_data.dart';

class NewsInteractor {
  final NewsRepository _repository;

  NewsInteractor({required NewsRepository repository}) : _repository = repository;

  Future<NewsMainData?> fetchNewsData({required String query})async{
    return _repository.fetchNewsData(query: query);
  }
}