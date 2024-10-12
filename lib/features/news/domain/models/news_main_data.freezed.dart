// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_main_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsMainData {
  NewsPaginationData? get pagination => throw _privateConstructorUsedError;
  List<NewsData>? get data => throw _privateConstructorUsedError;

  /// Create a copy of NewsMainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsMainDataCopyWith<NewsMainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsMainDataCopyWith<$Res> {
  factory $NewsMainDataCopyWith(
          NewsMainData value, $Res Function(NewsMainData) then) =
      _$NewsMainDataCopyWithImpl<$Res, NewsMainData>;
  @useResult
  $Res call({NewsPaginationData? pagination, List<NewsData>? data});

  $NewsPaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$NewsMainDataCopyWithImpl<$Res, $Val extends NewsMainData>
    implements $NewsMainDataCopyWith<$Res> {
  _$NewsMainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsMainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as NewsPaginationData?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsData>?,
    ) as $Val);
  }

  /// Create a copy of NewsMainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsPaginationDataCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $NewsPaginationDataCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsMainDataImplCopyWith<$Res>
    implements $NewsMainDataCopyWith<$Res> {
  factory _$$NewsMainDataImplCopyWith(
          _$NewsMainDataImpl value, $Res Function(_$NewsMainDataImpl) then) =
      __$$NewsMainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsPaginationData? pagination, List<NewsData>? data});

  @override
  $NewsPaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$NewsMainDataImplCopyWithImpl<$Res>
    extends _$NewsMainDataCopyWithImpl<$Res, _$NewsMainDataImpl>
    implements _$$NewsMainDataImplCopyWith<$Res> {
  __$$NewsMainDataImplCopyWithImpl(
      _$NewsMainDataImpl _value, $Res Function(_$NewsMainDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsMainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NewsMainDataImpl(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as NewsPaginationData?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsData>?,
    ));
  }
}

/// @nodoc

class _$NewsMainDataImpl implements _NewsMainData {
  _$NewsMainDataImpl({this.pagination, final List<NewsData>? data})
      : _data = data;

  @override
  final NewsPaginationData? pagination;
  final List<NewsData>? _data;
  @override
  List<NewsData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsMainData(pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsMainDataImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_data));

  /// Create a copy of NewsMainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsMainDataImplCopyWith<_$NewsMainDataImpl> get copyWith =>
      __$$NewsMainDataImplCopyWithImpl<_$NewsMainDataImpl>(this, _$identity);
}

abstract class _NewsMainData implements NewsMainData {
  factory _NewsMainData(
      {final NewsPaginationData? pagination,
      final List<NewsData>? data}) = _$NewsMainDataImpl;

  @override
  NewsPaginationData? get pagination;
  @override
  List<NewsData>? get data;

  /// Create a copy of NewsMainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsMainDataImplCopyWith<_$NewsMainDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
