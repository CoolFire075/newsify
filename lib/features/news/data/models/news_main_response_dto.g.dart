// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_main_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsMainResponseDto _$NewsMainResponseDtoFromJson(Map<String, dynamic> json) =>
    NewsMainResponseDto(
      pagination: json['pagination'] == null
          ? null
          : NewsPaginationResponseDto.fromJson(
              json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NewsDataResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewsMainResponseDtoToJson(NewsMainResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pagination', instance.pagination);
  writeNotNull('data', instance.data);
  return val;
}
