// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComicListModel _$ComicListModelFromJson(Map<String, dynamic> json) {
  return _ComicListModel.fromJson(json);
}

/// @nodoc
mixin _$ComicListModel {
  int? get available => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  String? get collectionURI => throw _privateConstructorUsedError;
  List<ComicSummaryModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicListModelCopyWith<ComicListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicListModelCopyWith<$Res> {
  factory $ComicListModelCopyWith(
          ComicListModel value, $Res Function(ComicListModel) then) =
      _$ComicListModelCopyWithImpl<$Res, ComicListModel>;
  @useResult
  $Res call(
      {int? available,
      int? returned,
      String? collectionURI,
      List<ComicSummaryModel>? items});
}

/// @nodoc
class _$ComicListModelCopyWithImpl<$Res, $Val extends ComicListModel>
    implements $ComicListModelCopyWith<$Res> {
  _$ComicListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? returned = freezed,
    Object? collectionURI = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionURI: freezed == collectionURI
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ComicSummaryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComicListModelImplCopyWith<$Res>
    implements $ComicListModelCopyWith<$Res> {
  factory _$$ComicListModelImplCopyWith(_$ComicListModelImpl value,
          $Res Function(_$ComicListModelImpl) then) =
      __$$ComicListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? available,
      int? returned,
      String? collectionURI,
      List<ComicSummaryModel>? items});
}

/// @nodoc
class __$$ComicListModelImplCopyWithImpl<$Res>
    extends _$ComicListModelCopyWithImpl<$Res, _$ComicListModelImpl>
    implements _$$ComicListModelImplCopyWith<$Res> {
  __$$ComicListModelImplCopyWithImpl(
      _$ComicListModelImpl _value, $Res Function(_$ComicListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? returned = freezed,
    Object? collectionURI = freezed,
    Object? items = freezed,
  }) {
    return _then(_$ComicListModelImpl(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionURI: freezed == collectionURI
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ComicSummaryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicListModelImpl implements _ComicListModel {
  const _$ComicListModelImpl(
      {required this.available,
      required this.returned,
      required this.collectionURI,
      required final List<ComicSummaryModel>? items})
      : _items = items;

  factory _$ComicListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicListModelImplFromJson(json);

  @override
  final int? available;
  @override
  final int? returned;
  @override
  final String? collectionURI;
  final List<ComicSummaryModel>? _items;
  @override
  List<ComicSummaryModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ComicListModel(available: $available, returned: $returned, collectionURI: $collectionURI, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicListModelImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.returned, returned) ||
                other.returned == returned) &&
            (identical(other.collectionURI, collectionURI) ||
                other.collectionURI == collectionURI) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, available, returned,
      collectionURI, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicListModelImplCopyWith<_$ComicListModelImpl> get copyWith =>
      __$$ComicListModelImplCopyWithImpl<_$ComicListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicListModelImplToJson(
      this,
    );
  }
}

abstract class _ComicListModel implements ComicListModel {
  const factory _ComicListModel(
      {required final int? available,
      required final int? returned,
      required final String? collectionURI,
      required final List<ComicSummaryModel>? items}) = _$ComicListModelImpl;

  factory _ComicListModel.fromJson(Map<String, dynamic> json) =
      _$ComicListModelImpl.fromJson;

  @override
  int? get available;
  @override
  int? get returned;
  @override
  String? get collectionURI;
  @override
  List<ComicSummaryModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$ComicListModelImplCopyWith<_$ComicListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
