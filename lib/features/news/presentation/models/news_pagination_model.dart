import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_pagination_model.freezed.dart';

@freezed
class NewsPaginationModel with _$NewsPaginationModel{
  factory NewsPaginationModel({
    int? limit,
    int? offset,
    int? count,
    int? total,
}) = _NewsPaginationModel;
}