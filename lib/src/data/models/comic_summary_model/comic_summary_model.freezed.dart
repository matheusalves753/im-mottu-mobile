// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComicSummaryModel _$ComicSummaryModelFromJson(Map<String, dynamic> json) {
  return _ComicSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$ComicSummaryModel {
  String? get resourceURI => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicSummaryModelCopyWith<ComicSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicSummaryModelCopyWith<$Res> {
  factory $ComicSummaryModelCopyWith(
          ComicSummaryModel value, $Res Function(ComicSummaryModel) then) =
      _$ComicSummaryModelCopyWithImpl<$Res, ComicSummaryModel>;
  @useResult
  $Res call({String? resourceURI, String? name});
}

/// @nodoc
class _$ComicSummaryModelCopyWithImpl<$Res, $Val extends ComicSummaryModel>
    implements $ComicSummaryModelCopyWith<$Res> {
  _$ComicSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceURI = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      resourceURI: freezed == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComicSummaryModelImplCopyWith<$Res>
    implements $ComicSummaryModelCopyWith<$Res> {
  factory _$$ComicSummaryModelImplCopyWith(_$ComicSummaryModelImpl value,
          $Res Function(_$ComicSummaryModelImpl) then) =
      __$$ComicSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resourceURI, String? name});
}

/// @nodoc
class __$$ComicSummaryModelImplCopyWithImpl<$Res>
    extends _$ComicSummaryModelCopyWithImpl<$Res, _$ComicSummaryModelImpl>
    implements _$$ComicSummaryModelImplCopyWith<$Res> {
  __$$ComicSummaryModelImplCopyWithImpl(_$ComicSummaryModelImpl _value,
      $Res Function(_$ComicSummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceURI = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ComicSummaryModelImpl(
      resourceURI: freezed == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicSummaryModelImpl implements _ComicSummaryModel {
  const _$ComicSummaryModelImpl(
      {required this.resourceURI, required this.name});

  factory _$ComicSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicSummaryModelImplFromJson(json);

  @override
  final String? resourceURI;
  @override
  final String? name;

  @override
  String toString() {
    return 'ComicSummaryModel(resourceURI: $resourceURI, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicSummaryModelImpl &&
            (identical(other.resourceURI, resourceURI) ||
                other.resourceURI == resourceURI) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceURI, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicSummaryModelImplCopyWith<_$ComicSummaryModelImpl> get copyWith =>
      __$$ComicSummaryModelImplCopyWithImpl<_$ComicSummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _ComicSummaryModel implements ComicSummaryModel {
  const factory _ComicSummaryModel(
      {required final String? resourceURI,
      required final String? name}) = _$ComicSummaryModelImpl;

  factory _ComicSummaryModel.fromJson(Map<String, dynamic> json) =
      _$ComicSummaryModelImpl.fromJson;

  @override
  String? get resourceURI;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ComicSummaryModelImplCopyWith<_$ComicSummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
