import 'package:newsify/features/news/data/api/news_api.dart';
import 'package:newsify/features/news/data/mappers/news_mapper.dart';
import 'package:newsify/features/news/domain/models/news_main_data.dart';
import 'package:newsify/features/news/domain/repository/news_remote_repository.dart';

class NewsRemoteRepositoryImpl implements NewsRemoteRepository{
  final NewsApi _newsApi;
  final NewsMapper _newsMapper;

  NewsRemoteRepositoryImpl(this._newsApi, this._newsMapper);

  @override
  Future<NewsMainData?> fetchNewsData(List<String> countries) async {
    final data = await _newsApi.fetchNewsData(countries);
    if(data == null) return null;
    return _newsMapper.mapNewsData(data);
    }
}