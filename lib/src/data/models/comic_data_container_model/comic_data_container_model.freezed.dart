// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_data_container_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComicDataContainerModel _$ComicDataContainerModelFromJson(
    Map<String, dynamic> json) {
  return _ComicDataContainerModel.fromJson(json);
}

/// @nodoc
mixin _$ComicDataContainerModel {
  int? get offset => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  List<ComicModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDataContainerModelCopyWith<ComicDataContainerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDataContainerModelCopyWith<$Res> {
  factory $ComicDataContainerModelCopyWith(ComicDataContainerModel value,
          $Res Function(ComicDataContainerModel) then) =
      _$ComicDataContainerModelCopyWithImpl<$Res, ComicDataContainerModel>;
  @useResult
  $Res call(
      {int? offset,
      int? limit,
      int? total,
      int? count,
      List<ComicModel>? results});
}

/// @nodoc
class _$ComicDataContainerModelCopyWithImpl<$Res,
        $Val extends ComicDataContainerModel>
    implements $ComicDataContainerModelCopyWith<$Res> {
  _$ComicDataContainerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ComicModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComicDataContainerModelImplCopyWith<$Res>
    implements $ComicDataContainerModelCopyWith<$Res> {
  factory _$$ComicDataContainerModelImplCopyWith(
          _$ComicDataContainerModelImpl value,
          $Res Function(_$ComicDataContainerModelImpl) then) =
      __$$ComicDataContainerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? offset,
      int? limit,
      int? total,
      int? count,
      List<ComicModel>? results});
}

/// @nodoc
class __$$ComicDataContainerModelImplCopyWithImpl<$Res>
    extends _$ComicDataContainerModelCopyWithImpl<$Res,
        _$ComicDataContainerModelImpl>
    implements _$$ComicDataContainerModelImplCopyWith<$Res> {
  __$$ComicDataContainerModelImplCopyWithImpl(
      _$ComicDataContainerModelImpl _value,
      $Res Function(_$ComicDataContainerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$ComicDataContainerModelImpl(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ComicModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicDataContainerModelImpl implements _ComicDataContainerModel {
  const _$ComicDataContainerModelImpl(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<ComicModel>? results})
      : _results = results;

  factory _$ComicDataContainerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicDataContainerModelImplFromJson(json);

  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final int? total;
  @override
  final int? count;
  final List<ComicModel>? _results;
  @override
  List<ComicModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ComicDataContainerModel(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicDataContainerModelImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, total, count,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicDataContainerModelImplCopyWith<_$ComicDataContainerModelImpl>
      get copyWith => __$$ComicDataContainerModelImplCopyWithImpl<
          _$ComicDataContainerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicDataContainerModelImplToJson(
      this,
    );
  }
}

abstract class _ComicDataContainerModel implements ComicDataContainerModel {
  const factory _ComicDataContainerModel(
          {required final int? offset,
          required final int? limit,
          required final int? total,
          required final int? count,
          required final List<ComicModel>? results}) =
      _$ComicDataContainerModelImpl;

  factory _ComicDataContainerModel.fromJson(Map<String, dynamic> json) =
      _$ComicDataContainerModelImpl.fromJson;

  @override
  int? get offset;
  @override
  int? get limit;
  @override
  int? get total;
  @override
  int? get count;
  @override
  List<ComicModel>? get results;
  @override
  @JsonKey(ignore: true)
  _$$ComicDataContainerModelImplCopyWith<_$ComicDataContainerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
