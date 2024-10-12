import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newsify/features/news/presentation/models/news_pagination_model.dart';

import 'news_data_model.dart';

part 'news_main_model.freezed.dart';

@freezed
class NewsMainModel with _$NewsMainModel{
  factory NewsMainModel({
    NewsPaginationModel? pagination,
    List<NewsDataModel?>? data,
}) = _NewsMainModel;
}