import 'package:freezed_annotation/freezed_annotation.dart';

import 'news_data.dart';
import 'news_pagination_data.dart';

part 'news_main_data.freezed.dart';

@freezed
class NewsMainData with _$NewsMainData{
  factory NewsMainData({
   NewsPaginationData? pagination,
   List<NewsData>? data,
}) = _NewsMainData;
}