// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thumbnail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThumbnailModel _$ThumbnailModelFromJson(Map<String, dynamic> json) {
  return _ThumbnailModel.fromJson(json);
}

/// @nodoc
mixin _$ThumbnailModel {
  String? get path => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailModelCopyWith<ThumbnailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailModelCopyWith<$Res> {
  factory $ThumbnailModelCopyWith(
          ThumbnailModel value, $Res Function(ThumbnailModel) then) =
      _$ThumbnailModelCopyWithImpl<$Res, ThumbnailModel>;
  @useResult
  $Res call({String? path, String? extension});
}

/// @nodoc
class _$ThumbnailModelCopyWithImpl<$Res, $Val extends ThumbnailModel>
    implements $ThumbnailModelCopyWith<$Res> {
  _$ThumbnailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? extension = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThumbnailModelImplCopyWith<$Res>
    implements $ThumbnailModelCopyWith<$Res> {
  factory _$$ThumbnailModelImplCopyWith(_$ThumbnailModelImpl value,
          $Res Function(_$ThumbnailModelImpl) then) =
      __$$ThumbnailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? path, String? extension});
}

/// @nodoc
class __$$ThumbnailModelImplCopyWithImpl<$Res>
    extends _$ThumbnailModelCopyWithImpl<$Res, _$ThumbnailModelImpl>
    implements _$$ThumbnailModelImplCopyWith<$Res> {
  __$$ThumbnailModelImplCopyWithImpl(
      _$ThumbnailModelImpl _value, $Res Function(_$ThumbnailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? extension = freezed,
  }) {
    return _then(_$ThumbnailModelImpl(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThumbnailModelImpl implements _ThumbnailModel {
  const _$ThumbnailModelImpl({required this.path, required this.extension});

  factory _$ThumbnailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailModelImplFromJson(json);

  @override
  final String? path;
  @override
  final String? extension;

  @override
  String toString() {
    return 'ThumbnailModel(path: $path, extension: $extension)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailModelImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.extension, extension) ||
                other.extension == extension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, extension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailModelImplCopyWith<_$ThumbnailModelImpl> get copyWith =>
      __$$ThumbnailModelImplCopyWithImpl<_$ThumbnailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailModelImplToJson(
      this,
    );
  }
}

abstract class _ThumbnailModel implements ThumbnailModel {
  const factory _ThumbnailModel(
      {required final String? path,
      required final String? extension}) = _$ThumbnailModelImpl;

  factory _ThumbnailModel.fromJson(Map<String, dynamic> json) =
      _$ThumbnailModelImpl.fromJson;

  @override
  String? get path;
  @override
  String? get extension;
  @override
  @JsonKey(ignore: true)
  _$$ThumbnailModelImplCopyWith<_$ThumbnailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
