// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_pagination_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsPaginationData {
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Create a copy of NewsPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsPaginationDataCopyWith<NewsPaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsPaginationDataCopyWith<$Res> {
  factory $NewsPaginationDataCopyWith(
          NewsPaginationData value, $Res Function(NewsPaginationData) then) =
      _$NewsPaginationDataCopyWithImpl<$Res, NewsPaginationData>;
  @useResult
  $Res call({int? limit, int? offset, int? count, int? total});
}

/// @nodoc
class _$NewsPaginationDataCopyWithImpl<$Res, $Val extends NewsPaginationData>
    implements $NewsPaginationDataCopyWith<$Res> {
  _$NewsPaginationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsPaginationData
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
abstract class _$$NewsPaginationDataImplCopyWith<$Res>
    implements $NewsPaginationDataCopyWith<$Res> {
  factory _$$NewsPaginationDataImplCopyWith(_$NewsPaginationDataImpl value,
          $Res Function(_$NewsPaginationDataImpl) then) =
      __$$NewsPaginationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? limit, int? offset, int? count, int? total});
}

/// @nodoc
class __$$NewsPaginationDataImplCopyWithImpl<$Res>
    extends _$NewsPaginationDataCopyWithImpl<$Res, _$NewsPaginationDataImpl>
    implements _$$NewsPaginationDataImplCopyWith<$Res> {
  __$$NewsPaginationDataImplCopyWithImpl(_$NewsPaginationDataImpl _value,
      $Res Function(_$NewsPaginationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_$NewsPaginationDataImpl(
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

class _$NewsPaginationDataImpl implements _NewsPaginationData {
  _$NewsPaginationDataImpl({this.limit, this.offset, this.count, this.total});

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
    return 'NewsPaginationData(limit: $limit, offset: $offset, count: $count, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsPaginationDataImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, count, total);

  /// Create a copy of NewsPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsPaginationDataImplCopyWith<_$NewsPaginationDataImpl> get copyWith =>
      __$$NewsPaginationDataImplCopyWithImpl<_$NewsPaginationDataImpl>(
          this, _$identity);
}

abstract class _NewsPaginationData implements NewsPaginationData {
  factory _NewsPaginationData(
      {final int? limit,
      final int? offset,
      final int? count,
      final int? total}) = _$NewsPaginationDataImpl;

  @override
  int? get limit;
  @override
  int? get offset;
  @override
  int? get count;
  @override
  int? get total;

  /// Create a copy of NewsPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsPaginationDataImplCopyWith<_$NewsPaginationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
