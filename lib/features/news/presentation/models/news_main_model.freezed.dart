// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_main_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsMainModel {
  NewsPaginationModel? get pagination => throw _privateConstructorUsedError;
  List<NewsDataModel>? get data => throw _privateConstructorUsedError;

  /// Create a copy of NewsMainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsMainModelCopyWith<NewsMainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsMainModelCopyWith<$Res> {
  factory $NewsMainModelCopyWith(
          NewsMainModel value, $Res Function(NewsMainModel) then) =
      _$NewsMainModelCopyWithImpl<$Res, NewsMainModel>;
  @useResult
  $Res call({NewsPaginationModel? pagination, List<NewsDataModel>? data});

  $NewsPaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$NewsMainModelCopyWithImpl<$Res, $Val extends NewsMainModel>
    implements $NewsMainModelCopyWith<$Res> {
  _$NewsMainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsMainModel
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
              as NewsPaginationModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsDataModel>?,
    ) as $Val);
  }

  /// Create a copy of NewsMainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsPaginationModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $NewsPaginationModelCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsMainModelImplCopyWith<$Res>
    implements $NewsMainModelCopyWith<$Res> {
  factory _$$NewsMainModelImplCopyWith(
          _$NewsMainModelImpl value, $Res Function(_$NewsMainModelImpl) then) =
      __$$NewsMainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsPaginationModel? pagination, List<NewsDataModel>? data});

  @override
  $NewsPaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$NewsMainModelImplCopyWithImpl<$Res>
    extends _$NewsMainModelCopyWithImpl<$Res, _$NewsMainModelImpl>
    implements _$$NewsMainModelImplCopyWith<$Res> {
  __$$NewsMainModelImplCopyWithImpl(
      _$NewsMainModelImpl _value, $Res Function(_$NewsMainModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsMainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NewsMainModelImpl(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as NewsPaginationModel?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsDataModel>?,
    ));
  }
}

/// @nodoc

class _$NewsMainModelImpl implements _NewsMainModel {
  _$NewsMainModelImpl({this.pagination, final List<NewsDataModel>? data})
      : _data = data;

  @override
  final NewsPaginationModel? pagination;
  final List<NewsDataModel>? _data;
  @override
  List<NewsDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsMainModel(pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsMainModelImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_data));

  /// Create a copy of NewsMainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsMainModelImplCopyWith<_$NewsMainModelImpl> get copyWith =>
      __$$NewsMainModelImplCopyWithImpl<_$NewsMainModelImpl>(this, _$identity);
}

abstract class _NewsMainModel implements NewsMainModel {
  factory _NewsMainModel(
      {final NewsPaginationModel? pagination,
      final List<NewsDataModel>? data}) = _$NewsMainModelImpl;

  @override
  NewsPaginationModel? get pagination;
  @override
  List<NewsDataModel>? get data;

  /// Create a copy of NewsMainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsMainModelImplCopyWith<_$NewsMainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
