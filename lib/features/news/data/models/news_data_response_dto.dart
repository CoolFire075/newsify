import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_data_response_dto.g.dart';

@JsonSerializable()
class NewsDataResponseDto extends Equatable {
  @JsonKey(name: 'author', required: false, includeIfNull: false)
  final String? author;
  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;
  @JsonKey(name: 'description', required: false, includeIfNull: false)
  final String? description;
  @JsonKey(name: 'url', required: false, includeIfNull: false)
  final String? url;
  @JsonKey(name: 'source', required: false, includeIfNull: false)
  final String? source;
  @JsonKey(name: 'image', required: false, includeIfNull: false)
  final String? image;
  @JsonKey(name: 'category', required: false, includeIfNull: false)
  final String? category;
  @JsonKey(name: 'language', required: false, includeIfNull: false)
  final String? language;
  @JsonKey(name: 'country', required: false, includeIfNull: false)
  final String? country;
  @JsonKey(name: 'published_at', required: false, includeIfNull: false)
  final String? publishedAt;

  const NewsDataResponseDto({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.source,
    required this.image,
    required this.category,
    required this.language,
    required this.country,
    required this.publishedAt,
  });

  factory NewsDataResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NewsDataResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NewsDataResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        author,
        title,
        description,
        url,
        source,
        image,
        category,
        language,
        country,
        publishedAt,
      ];
}
