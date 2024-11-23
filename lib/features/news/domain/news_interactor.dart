import 'package:newsify/features/news/domain/repository/news_local_repository.dart';
import 'package:newsify/features/news/domain/repository/news_remote_repository.dart';

import '../presentation/models/news_data_model.dart';
import 'models/news_main_data.dart';

class NewsInteractor {
  final NewsRemoteRepository _remoteRepository;
  final NewsLocalRepository _localRepository;

  NewsInteractor(
      {required NewsLocalRepository localRepository,
      required NewsRemoteRepository remoteRepository})
      : _remoteRepository = remoteRepository,
        _localRepository = localRepository;

  Stream<List<NewsDataModel>?> get newsListStream => _localRepository.newsListStream;

  Future<NewsMainData?> fetchNewsData(List<String> countries) async {
    return _remoteRepository.fetchNewsData(countries);
  }

  List<NewsDataModel>? getNewsList() {
    return _localRepository.getNewsList();
  }

  void saveNewsList(List<NewsDataModel>? newsList) {
    _localRepository.saveNewsList(newsList);
  }
}
