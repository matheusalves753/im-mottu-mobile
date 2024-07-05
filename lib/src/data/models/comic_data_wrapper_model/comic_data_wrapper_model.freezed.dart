// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_data_wrapper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComicDataWrapperModel _$ComicDataWrapperModelFromJson(
    Map<String, dynamic> json) {
  return _ComicDataWrapperModel.fromJson(json);
}

/// @nodoc
mixin _$ComicDataWrapperModel {
  @HiveField(0)
  int? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get copyright => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get attributionText => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get attributionHTML => throw _privateConstructorUsedError;
  @HiveField(5)
  ComicDataContainerModel? get data => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get etag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDataWrapperModelCopyWith<ComicDataWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDataWrapperModelCopyWith<$Res> {
  factory $ComicDataWrapperModelCopyWith(ComicDataWrapperModel value,
          $Res Function(ComicDataWrapperModel) then) =
      _$ComicDataWrapperModelCopyWithImpl<$Res, ComicDataWrapperModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) String? status,
      @HiveField(2) String? copyright,
      @HiveField(3) String? attributionText,
      @HiveField(4) String? attributionHTML,
      @HiveField(5) ComicDataContainerModel? data,
      @HiveField(6) String? etag});

  $ComicDataContainerModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ComicDataWrapperModelCopyWithImpl<$Res,
        $Val extends ComicDataWrapperModel>
    implements $ComicDataWrapperModelCopyWith<$Res> {
  _$ComicDataWrapperModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? copyright = freezed,
    Object? attributionText = freezed,
    Object? attributionHTML = freezed,
    Object? data = freezed,
    Object? etag = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionText: freezed == attributionText
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionHTML: freezed == attributionHTML
          ? _value.attributionHTML
          : attributionHTML // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ComicDataContainerModel?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicDataContainerModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ComicDataContainerModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComicDataWrapperModelImplCopyWith<$Res>
    implements $ComicDataWrapperModelCopyWith<$Res> {
  factory _$$ComicDataWrapperModelImplCopyWith(
          _$ComicDataWrapperModelImpl value,
          $Res Function(_$ComicDataWrapperModelImpl) then) =
      __$$ComicDataWrapperModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) String? status,
      @HiveField(2) String? copyright,
      @HiveField(3) String? attributionText,
      @HiveField(4) String? attributionHTML,
      @HiveField(5) ComicDataContainerModel? data,
      @HiveField(6) String? etag});

  @override
  $ComicDataContainerModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ComicDataWrapperModelImplCopyWithImpl<$Res>
    extends _$ComicDataWrapperModelCopyWithImpl<$Res,
        _$ComicDataWrapperModelImpl>
    implements _$$ComicDataWrapperModelImplCopyWith<$Res> {
  __$$ComicDataWrapperModelImplCopyWithImpl(_$ComicDataWrapperModelImpl _value,
      $Res Function(_$ComicDataWrapperModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? copyright = freezed,
    Object? attributionText = freezed,
    Object? attributionHTML = freezed,
    Object? data = freezed,
    Object? etag = freezed,
  }) {
    return _then(_$ComicDataWrapperModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionText: freezed == attributionText
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionHTML: freezed == attributionHTML
          ? _value.attributionHTML
          : attributionHTML // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ComicDataContainerModel?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicDataWrapperModelImpl implements _ComicDataWrapperModel {
  const _$ComicDataWrapperModelImpl(
      {@HiveField(0) required this.code,
      @HiveField(1) required this.status,
      @HiveField(2) required this.copyright,
      @HiveField(3) required this.attributionText,
      @HiveField(4) required this.attributionHTML,
      @HiveField(5) required this.data,
      @HiveField(6) required this.etag});

  factory _$ComicDataWrapperModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicDataWrapperModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? code;
  @override
  @HiveField(1)
  final String? status;
  @override
  @HiveField(2)
  final String? copyright;
  @override
  @HiveField(3)
  final String? attributionText;
  @override
  @HiveField(4)
  final String? attributionHTML;
  @override
  @HiveField(5)
  final ComicDataContainerModel? data;
  @override
  @HiveField(6)
  final String? etag;

  @override
  String toString() {
    return 'ComicDataWrapperModel(code: $code, status: $status, copyright: $copyright, attributionText: $attributionText, attributionHTML: $attributionHTML, data: $data, etag: $etag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicDataWrapperModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.attributionText, attributionText) ||
                other.attributionText == attributionText) &&
            (identical(other.attributionHTML, attributionHTML) ||
                other.attributionHTML == attributionHTML) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.etag, etag) || other.etag == etag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, copyright,
      attributionText, attributionHTML, data, etag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicDataWrapperModelImplCopyWith<_$ComicDataWrapperModelImpl>
      get copyWith => __$$ComicDataWrapperModelImplCopyWithImpl<
          _$ComicDataWrapperModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicDataWrapperModelImplToJson(
      this,
    );
  }
}

abstract class _ComicDataWrapperModel implements ComicDataWrapperModel {
  const factory _ComicDataWrapperModel(
      {@HiveField(0) required final int? code,
      @HiveField(1) required final String? status,
      @HiveField(2) required final String? copyright,
      @HiveField(3) required final String? attributionText,
      @HiveField(4) required final String? attributionHTML,
      @HiveField(5) required final ComicDataContainerModel? data,
      @HiveField(6) required final String? etag}) = _$ComicDataWrapperModelImpl;

  factory _ComicDataWrapperModel.fromJson(Map<String, dynamic> json) =
      _$ComicDataWrapperModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get code;
  @override
  @HiveField(1)
  String? get status;
  @override
  @HiveField(2)
  String? get copyright;
  @override
  @HiveField(3)
  String? get attributionText;
  @override
  @HiveField(4)
  String? get attributionHTML;
  @override
  @HiveField(5)
  ComicDataContainerModel? get data;
  @override
  @HiveField(6)
  String? get etag;
  @override
  @JsonKey(ignore: true)
  _$$ComicDataWrapperModelImplCopyWith<_$ComicDataWrapperModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
