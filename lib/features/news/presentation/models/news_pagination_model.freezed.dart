// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsPaginationModel {
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Create a copy of NewsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsPaginationModelCopyWith<NewsPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsPaginationModelCopyWith<$Res> {
  factory $NewsPaginationModelCopyWith(
          NewsPaginationModel value, $Res Function(NewsPaginationModel) then) =
      _$NewsPaginationModelCopyWithImpl<$Res, NewsPaginationModel>;
  @useResult
  $Res call({int? limit, int? offset, int? count, int? total});
}

/// @nodoc
class _$NewsPaginationModelCopyWithImpl<$Res, $Val extends NewsPaginationModel>
    implements $NewsPaginationModelCopyWith<$Res> {
  _$NewsPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsPaginationModelImplCopyWith<$Res>
    implements $NewsPaginationModelCopyWith<$Res> {
  factory _$$NewsPaginationModelImplCopyWith(_$NewsPaginationModelImpl value,
          $Res Function(_$NewsPaginationModelImpl) then) =
      __$$NewsPaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? limit, int? offset, int? count, int? total});
}

/// @nodoc
class __$$NewsPaginationModelImplCopyWithImpl<$Res>
    extends _$NewsPaginationModelCopyWithImpl<$Res, _$NewsPaginationModelImpl>
    implements _$$NewsPaginationModelImplCopyWith<$Res> {
  __$$NewsPaginationModelImplCopyWithImpl(_$NewsPaginationModelImpl _value,
      $Res Function(_$NewsPaginationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_$NewsPaginationModelImpl(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NewsPaginationModelImpl implements _NewsPaginationModel {
  _$NewsPaginationModelImpl({this.limit, this.offset, this.count, this.total});

  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final int? count;
  @override
  final int? total;

  @override
  String toString() {
    return 'NewsPaginationModel(limit: $limit, offset: $offset, count: $count, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsPaginationModelImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, count, total);

  /// Create a copy of NewsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsPaginationModelImplCopyWith<_$NewsPaginationModelImpl> get copyWith =>
      __$$NewsPaginationModelImplCopyWithImpl<_$NewsPaginationModelImpl>(
          this, _$identity);
}

abstract class _NewsPaginationModel implements NewsPaginationModel {
  factory _NewsPaginationModel(
      {final int? limit,
      final int? offset,
      final int? count,
      final int? total}) = _$NewsPaginationModelImpl;

  @override
  int? get limit;
  @override
  int? get offset;
  @override
  int? get count;
  @override
  int? get total;

  /// Create a copy of NewsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsPaginationModelImplCopyWith<_$NewsPaginationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
