// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComicModel _$ComicModelFromJson(Map<String, dynamic> json) {
  return _ComicModel.fromJson(json);
}

/// @nodoc
mixin _$ComicModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicModelCopyWith<ComicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicModelCopyWith<$Res> {
  factory $ComicModelCopyWith(
          ComicModel value, $Res Function(ComicModel) then) =
      _$ComicModelCopyWithImpl<$Res, ComicModel>;
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class _$ComicModelCopyWithImpl<$Res, $Val extends ComicModel>
    implements $ComicModelCopyWith<$Res> {
  _$ComicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComicModelImplCopyWith<$Res>
    implements $ComicModelCopyWith<$Res> {
  factory _$$ComicModelImplCopyWith(
          _$ComicModelImpl value, $Res Function(_$ComicModelImpl) then) =
      __$$ComicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class __$$ComicModelImplCopyWithImpl<$Res>
    extends _$ComicModelCopyWithImpl<$Res, _$ComicModelImpl>
    implements _$$ComicModelImplCopyWith<$Res> {
  __$$ComicModelImplCopyWithImpl(
      _$ComicModelImpl _value, $Res Function(_$ComicModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ComicModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicModelImpl implements _ComicModel {
  const _$ComicModelImpl({required this.id, required this.title});

  factory _$ComicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'ComicModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicModelImplCopyWith<_$ComicModelImpl> get copyWith =>
      __$$ComicModelImplCopyWithImpl<_$ComicModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicModelImplToJson(
      this,
    );
  }
}

abstract class _ComicModel implements ComicModel {
  const factory _ComicModel(
      {required final int? id,
      required final String? title}) = _$ComicModelImpl;

  factory _ComicModel.fromJson(Map<String, dynamic> json) =
      _$ComicModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ComicModelImplCopyWith<_$ComicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
