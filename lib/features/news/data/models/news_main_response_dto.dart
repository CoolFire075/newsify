import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'news_data_response_dto.dart';
import 'news_pagination_response_dto.dart';

part 'news_main_response_dto.g.dart';

@JsonSerializable()
class NewsMainResponseDto extends Equatable {
  @JsonKey(name: 'pagination', required: false, includeIfNull: false)
  final NewsPaginationResponseDto pagination;
  @JsonKey(name: 'data', required: false, includeIfNull: false)
  final List<NewsDataResponseDto> data;

  const NewsMainResponseDto({
    required this.pagination,
    required this.data,
  });

  factory NewsMainResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NewsMainResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NewsMainResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        pagination,
        data,
      ];
}
