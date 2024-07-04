// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharactersListPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> characters) data,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Character> characters)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> characters)? data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersListPageDataState value) data,
    required TResult Function(CharactersListPageLoadingState value) loading,
    required TResult Function(CharactersListPageErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersListPageDataState value)? data,
    TResult? Function(CharactersListPageLoadingState value)? loading,
    TResult? Function(CharactersListPageErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersListPageDataState value)? data,
    TResult Function(CharactersListPageLoadingState value)? loading,
    TResult Function(CharactersListPageErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersListPageStateCopyWith<$Res> {
  factory $CharactersListPageStateCopyWith(CharactersListPageState value,
          $Res Function(CharactersListPageState) then) =
      _$CharactersListPageStateCopyWithImpl<$Res, CharactersListPageState>;
}

/// @nodoc
class _$CharactersListPageStateCopyWithImpl<$Res,
        $Val extends CharactersListPageState>
    implements $CharactersListPageStateCopyWith<$Res> {
  _$CharactersListPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharactersListPageDataStateImplCopyWith<$Res> {
  factory _$$CharactersListPageDataStateImplCopyWith(
          _$CharactersListPageDataStateImpl value,
          $Res Function(_$CharactersListPageDataStateImpl) then) =
      __$$CharactersListPageDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$CharactersListPageDataStateImplCopyWithImpl<$Res>
    extends _$CharactersListPageStateCopyWithImpl<$Res,
        _$CharactersListPageDataStateImpl>
    implements _$$CharactersListPageDataStateImplCopyWith<$Res> {
  __$$CharactersListPageDataStateImplCopyWithImpl(
      _$CharactersListPageDataStateImpl _value,
      $Res Function(_$CharactersListPageDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$CharactersListPageDataStateImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$CharactersListPageDataStateImpl implements CharactersListPageDataState {
  const _$CharactersListPageDataStateImpl(
      {required final List<Character> characters})
      : _characters = characters;

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharactersListPageState.data(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersListPageDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersListPageDataStateImplCopyWith<_$CharactersListPageDataStateImpl>
      get copyWith => __$$CharactersListPageDataStateImplCopyWithImpl<
          _$CharactersListPageDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> characters) data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return data(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Character> characters)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return data?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> characters)? data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersListPageDataState value) data,
    required TResult Function(CharactersListPageLoadingState value) loading,
    required TResult Function(CharactersListPageErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersListPageDataState value)? data,
    TResult? Function(CharactersListPageLoadingState value)? loading,
    TResult? Function(CharactersListPageErrorState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersListPageDataState value)? data,
    TResult Function(CharactersListPageLoadingState value)? loading,
    TResult Function(CharactersListPageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class CharactersListPageDataState implements CharactersListPageState {
  const factory CharactersListPageDataState(
          {required final List<Character> characters}) =
      _$CharactersListPageDataStateImpl;

  List<Character> get characters;
  @JsonKey(ignore: true)
  _$$CharactersListPageDataStateImplCopyWith<_$CharactersListPageDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersListPageLoadingStateImplCopyWith<$Res> {
  factory _$$CharactersListPageLoadingStateImplCopyWith(
          _$CharactersListPageLoadingStateImpl value,
          $Res Function(_$CharactersListPageLoadingStateImpl) then) =
      __$$CharactersListPageLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersListPageLoadingStateImplCopyWithImpl<$Res>
    extends _$CharactersListPageStateCopyWithImpl<$Res,
        _$CharactersListPageLoadingStateImpl>
    implements _$$CharactersListPageLoadingStateImplCopyWith<$Res> {
  __$$CharactersListPageLoadingStateImplCopyWithImpl(
      _$CharactersListPageLoadingStateImpl _value,
      $Res Function(_$CharactersListPageLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharactersListPageLoadingStateImpl
    implements CharactersListPageLoadingState {
  const _$CharactersListPageLoadingStateImpl();

  @override
  String toString() {
    return 'CharactersListPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersListPageLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> characters) data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Character> characters)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> characters)? data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersListPageDataState value) data,
    required TResult Function(CharactersListPageLoadingState value) loading,
    required TResult Function(CharactersListPageErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersListPageDataState value)? data,
    TResult? Function(CharactersListPageLoadingState value)? loading,
    TResult? Function(CharactersListPageErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersListPageDataState value)? data,
    TResult Function(CharactersListPageLoadingState value)? loading,
    TResult Function(CharactersListPageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharactersListPageLoadingState
    implements CharactersListPageState {
  const factory CharactersListPageLoadingState() =
      _$CharactersListPageLoadingStateImpl;
}

/// @nodoc
abstract class _$$CharactersListPageErrorStateImplCopyWith<$Res> {
  factory _$$CharactersListPageErrorStateImplCopyWith(
          _$CharactersListPageErrorStateImpl value,
          $Res Function(_$CharactersListPageErrorStateImpl) then) =
      __$$CharactersListPageErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersListPageErrorStateImplCopyWithImpl<$Res>
    extends _$CharactersListPageStateCopyWithImpl<$Res,
        _$CharactersListPageErrorStateImpl>
    implements _$$CharactersListPageErrorStateImplCopyWith<$Res> {
  __$$CharactersListPageErrorStateImplCopyWithImpl(
      _$CharactersListPageErrorStateImpl _value,
      $Res Function(_$CharactersListPageErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharactersListPageErrorStateImpl
    implements CharactersListPageErrorState {
  const _$CharactersListPageErrorStateImpl();

  @override
  String toString() {
    return 'CharactersListPageState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersListPageErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> characters) data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Character> characters)? data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> characters)? data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersListPageDataState value) data,
    required TResult Function(CharactersListPageLoadingState value) loading,
    required TResult Function(CharactersListPageErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersListPageDataState value)? data,
    TResult? Function(CharactersListPageLoadingState value)? loading,
    TResult? Function(CharactersListPageErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersListPageDataState value)? data,
    TResult Function(CharactersListPageLoadingState value)? loading,
    TResult Function(CharactersListPageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharactersListPageErrorState implements CharactersListPageState {
  const factory CharactersListPageErrorState() =
      _$CharactersListPageErrorStateImpl;
}
