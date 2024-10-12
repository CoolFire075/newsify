// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDataResponseDto _$NewsDataResponseDtoFromJson(Map<String, dynamic> json) =>
    NewsDataResponseDto(
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      source: json['source'] as String,
      image: json['image'] as String,
      category: json['category'] as String,
      language: json['language'] as String,
      country: json['country'] as String,
      publishedAt: json['published_at'] as String,
    );

Map<String, dynamic> _$NewsDataResponseDtoToJson(
        NewsDataResponseDto instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'source': instance.source,
      'image': instance.image,
      'category': instance.category,
      'language': instance.language,
      'country': instance.country,
      'published_at': instance.publishedAt,
    };
