import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_data.freezed.dart';

@freezed
class NewsData with _$NewsData {
  factory NewsData({
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
  }) = _NewsData;
}
