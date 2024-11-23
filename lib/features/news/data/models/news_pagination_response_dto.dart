import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_pagination_response_dto.g.dart';

@JsonSerializable()
class NewsPaginationResponseDto extends Equatable {
  @JsonKey(name: 'limit', required: false, includeIfNull: false)
  final int? limit;
  @JsonKey(name: 'offset', required: false, includeIfNull: false)
  final int? offset;
  @JsonKey(name: 'count', required: false, includeIfNull: false)
  final int? count;
  @JsonKey(name: 'total', required: false, includeIfNull: false)
  final int? total;

  const NewsPaginationResponseDto({
    required this.limit,
    required this.offset,
    required this.count,
    required this.total,
  });

  factory NewsPaginationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NewsPaginationResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NewsPaginationResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        limit,
        offset,
        count,
        total,
      ];
}
