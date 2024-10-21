import 'package:newsify/features/news/data/api/news_api.dart';
import 'package:newsify/features/news/data/mappers/news_mapper.dart';
import 'package:newsify/features/news/domain/models/news_main_data.dart';
import 'package:newsify/features/news/domain/repository/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository{
  final NewsApi _newsApi;
  final NewsMapper _newsMapper;

  NewsRepositoryImpl(this._newsApi, this._newsMapper);

  @override
  Future<NewsMainData?> fetchNewsData({required String query}) async {
    final data = await _newsApi.fetchNewsData(query: query);
    if(data == null) return null;
    return _newsMapper.mapNewsData(data);
    }
}