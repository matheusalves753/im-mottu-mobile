// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_data_container_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterDataContainerModel _$CharacterDataContainerModelFromJson(
    Map<String, dynamic> json) {
  return _CharacterDataContainerModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterDataContainerModel {
  int? get offset => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  List<CharacterModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterDataContainerModelCopyWith<CharacterDataContainerModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDataContainerModelCopyWith<$Res> {
  factory $CharacterDataContainerModelCopyWith(
          CharacterDataContainerModel value,
          $Res Function(CharacterDataContainerModel) then) =
      _$CharacterDataContainerModelCopyWithImpl<$Res,
          CharacterDataContainerModel>;
  @useResult
  $Res call(
      {int? offset,
      int? limit,
      int? total,
      int? count,
      List<CharacterModel>? results});
}

/// @nodoc
class _$CharacterDataContainerModelCopyWithImpl<$Res,
        $Val extends CharacterDataContainerModel>
    implements $CharacterDataContainerModelCopyWith<$Res> {
  _$CharacterDataContainerModelCopyWithImpl(this._value, this._then);

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
              as List<CharacterModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDataContainerModelImplCopyWith<$Res>
    implements $CharacterDataContainerModelCopyWith<$Res> {
  factory _$$CharacterDataContainerModelImplCopyWith(
          _$CharacterDataContainerModelImpl value,
          $Res Function(_$CharacterDataContainerModelImpl) then) =
      __$$CharacterDataContainerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? offset,
      int? limit,
      int? total,
      int? count,
      List<CharacterModel>? results});
}

/// @nodoc
class __$$CharacterDataContainerModelImplCopyWithImpl<$Res>
    extends _$CharacterDataContainerModelCopyWithImpl<$Res,
        _$CharacterDataContainerModelImpl>
    implements _$$CharacterDataContainerModelImplCopyWith<$Res> {
  __$$CharacterDataContainerModelImplCopyWithImpl(
      _$CharacterDataContainerModelImpl _value,
      $Res Function(_$CharacterDataContainerModelImpl) _then)
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
    return _then(_$CharacterDataContainerModelImpl(
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
              as List<CharacterModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDataContainerModelImpl
    implements _CharacterDataContainerModel {
  const _$CharacterDataContainerModelImpl(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<CharacterModel>? results})
      : _results = results;

  factory _$CharacterDataContainerModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CharacterDataContainerModelImplFromJson(json);

  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final int? total;
  @override
  final int? count;
  final List<CharacterModel>? _results;
  @override
  List<CharacterModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CharacterDataContainerModel(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDataContainerModelImpl &&
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
  _$$CharacterDataContainerModelImplCopyWith<_$CharacterDataContainerModelImpl>
      get copyWith => __$$CharacterDataContainerModelImplCopyWithImpl<
          _$CharacterDataContainerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDataContainerModelImplToJson(
      this,
    );
  }
}

abstract class _CharacterDataContainerModel
    implements CharacterDataContainerModel {
  const factory _CharacterDataContainerModel(
          {required final int? offset,
          required final int? limit,
          required final int? total,
          required final int? count,
          required final List<CharacterModel>? results}) =
      _$CharacterDataContainerModelImpl;

  factory _CharacterDataContainerModel.fromJson(Map<String, dynamic> json) =
      _$CharacterDataContainerModelImpl.fromJson;

  @override
  int? get offset;
  @override
  int? get limit;
  @override
  int? get total;
  @override
  int? get count;
  @override
  List<CharacterModel>? get results;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDataContainerModelImplCopyWith<_$CharacterDataContainerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
