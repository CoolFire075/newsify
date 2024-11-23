import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_data_model.freezed.dart';

@freezed
class NewsDataModel with _$NewsDataModel {
  factory NewsDataModel({
    String? author,
    String? title,
    String? description,
    String? url,
    String? source,
    String? image,
    String? category,
    String? language,
    String? country,
    String? publishedAt,
    @Default(false) bool isPostLiked,
  }) = _NewsDataModel;
}
