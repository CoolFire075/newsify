// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDataResponseDto _$NewsDataResponseDtoFromJson(Map<String, dynamic> json) =>
    NewsDataResponseDto(
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      source: json['source'] as String?,
      image: json['image'] as String?,
      category: json['category'] as String?,
      language: json['language'] as String?,
      country: json['country'] as String?,
      publishedAt: json['published_at'] as String?,
    );

Map<String, dynamic> _$NewsDataResponseDtoToJson(NewsDataResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('author', instance.author);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('url', instance.url);
  writeNotNull('source', instance.source);
  writeNotNull('image', instance.image);
  writeNotNull('category', instance.category);
  writeNotNull('language', instance.language);
  writeNotNull('country', instance.country);
  writeNotNull('published_at', instance.publishedAt);
  return val;
}
