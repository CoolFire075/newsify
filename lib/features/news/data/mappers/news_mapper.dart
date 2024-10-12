import 'package:newsify/features/news/data/models/news_data_response_dto.dart';
import 'package:newsify/features/news/data/models/news_main_response_dto.dart';
import 'package:newsify/features/news/data/models/news_pagination_response_dto.dart';
import 'package:newsify/features/news/domain/models/news_data.dart';
import 'package:newsify/features/news/domain/models/news_pagination_data.dart';

import '../../domain/models/news_main_data.dart';

class NewsMapper {
  NewsMainData mapNewsData(NewsMainResponseDto dto) {
    return NewsMainData(
      pagination: _mapNewsPaginationData(dto.pagination),
      data: dto.data.map((e) => _mapNewsListData(e)).toList(),
    );
  }

  NewsPaginationData _mapNewsPaginationData(NewsPaginationResponseDto dto) {
    return NewsPaginationData(
      limit: dto.limit,
      offset: dto.offset,
      count: dto.count,
      total: dto.total,
    );
  }

  NewsData _mapNewsListData(NewsDataResponseDto dto) {
    return NewsData(
      author: dto.author,
      title: dto.title,
      description: dto.description,
      url: dto.url,
      source: dto.source,
      image: dto.image,
      category: dto.category,
      language: dto.language,
      country: dto.country,
      publishedAt: dto.publishedAt,
    );
  }
}
