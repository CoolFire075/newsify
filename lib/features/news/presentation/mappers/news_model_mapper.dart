import 'package:newsify/features/news/domain/models/news_data.dart';
import 'package:newsify/features/news/domain/models/news_pagination_data.dart';
import 'package:newsify/features/news/presentation/models/country_model.dart';
import 'package:newsify/features/news/presentation/models/news_data_model.dart';
import 'package:newsify/features/news/presentation/models/news_main_model.dart';

import '../../domain/models/news_main_data.dart';
import '../models/news_pagination_model.dart';

class NewsModelMapper {
  NewsMainModel mapNewsModel(NewsMainData domain) {
    return NewsMainModel(
      pagination: _mapNewsPaginationModel(domain.pagination!),
      data: domain.data?.map((e) => _mapNewsDataModel(e)).toList(),
    );
  }

  NewsPaginationModel _mapNewsPaginationModel(NewsPaginationData domain) {
    return NewsPaginationModel(
      limit: domain.limit,
      offset: domain.offset,
      count: domain.count,
      total: domain.total,
    );
  }

  NewsDataModel _mapNewsDataModel(NewsData domain) {
    return NewsDataModel(
      author: domain.author,
      title: domain.title,
      description: domain.description,
      url: domain.url,
      source: domain.source,
      image: domain.image,
      category: domain.category,
      language: domain.language,
      country: domain.country,
      publishedAt: domain.publishedAt,
    );
  }

  CountryModel _mapCountryModel(CountryModel model) {
    return CountryModel(
      country: model.country,
      isSelected: model.isSelected,
    );
  }
}
