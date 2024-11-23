import 'dart:async';

import 'package:newsify/features/news/domain/repository/news_local_repository.dart';
import 'package:newsify/features/news/presentation/models/news_data_model.dart';

class NewsLocalRepositoryImpl implements NewsLocalRepository {
  List<NewsDataModel>? _newsList;

  final _controller = StreamController<List<NewsDataModel>?>.broadcast();

  @override
  Stream<List<NewsDataModel>?> get newsListStream => _controller.stream;

  void addToStream(List<NewsDataModel>? newsList) => _controller.sink.add(newsList);

  @override
  List<NewsDataModel>? getNewsList() {
    return _newsList;
  }

  @override
  void saveNewsList(List<NewsDataModel>? newsList) {
    _newsList = newsList;
    addToStream(newsList);
  }
}
