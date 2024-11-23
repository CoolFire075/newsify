// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_pagination_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsPaginationResponseDto _$NewsPaginationResponseDtoFromJson(
        Map<String, dynamic> json) =>
    NewsPaginationResponseDto(
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NewsPaginationResponseDtoToJson(
    NewsPaginationResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  writeNotNull('offset', instance.offset);
  writeNotNull('count', instance.count);
  writeNotNull('total', instance.total);
  return val;
}
