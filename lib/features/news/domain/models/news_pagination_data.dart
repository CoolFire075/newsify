import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_pagination_data.freezed.dart';

@freezed
class NewsPaginationData with _$NewsPaginationData {
  factory NewsPaginationData({
    int? limit,
    int? offset,
    int? count,
    int? total,
  }) = _NewsPaginationData;
}
