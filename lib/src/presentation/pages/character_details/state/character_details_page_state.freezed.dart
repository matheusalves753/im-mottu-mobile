// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_details_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterDetailsPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Character character, List<Character> relatedCharacters)
        data,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character, List<Character> relatedCharacters)?
        data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character, List<Character> relatedCharacters)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterDetailsPageDataState value) data,
    required TResult Function(CharacterDetailsPageLoadingState value) loading,
    required TResult Function(CharacterDetailsPageErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterDetailsPageDataState value)? data,
    TResult? Function(CharacterDetailsPageLoadingState value)? loading,
    TResult? Function(CharacterDetailsPageErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterDetailsPageDataState value)? data,
    TResult Function(CharacterDetailsPageLoadingState value)? loading,
    TResult Function(CharacterDetailsPageErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailsPageStateCopyWith<$Res> {
  factory $CharacterDetailsPageStateCopyWith(CharacterDetailsPageState value,
          $Res Function(CharacterDetailsPageState) then) =
      _$CharacterDetailsPageStateCopyWithImpl<$Res, CharacterDetailsPageState>;
}

/// @nodoc
class _$CharacterDetailsPageStateCopyWithImpl<$Res,
        $Val extends CharacterDetailsPageState>
    implements $CharacterDetailsPageStateCopyWith<$Res> {
  _$CharacterDetailsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterDetailsPageDataStateImplCopyWith<$Res> {
  factory _$$CharacterDetailsPageDataStateImplCopyWith(
          _$CharacterDetailsPageDataStateImpl value,
          $Res Function(_$CharacterDetailsPageDataStateImpl) then) =
      __$$CharacterDetailsPageDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character, List<Character> relatedCharacters});
}

/// @nodoc
class __$$CharacterDetailsPageDataStateImplCopyWithImpl<$Res>
    extends _$CharacterDetailsPageStateCopyWithImpl<$Res,
        _$CharacterDetailsPageDataStateImpl>
    implements _$$CharacterDetailsPageDataStateImplCopyWith<$Res> {
  __$$CharacterDetailsPageDataStateImplCopyWithImpl(
      _$CharacterDetailsPageDataStateImpl _value,
      $Res Function(_$CharacterDetailsPageDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? relatedCharacters = null,
  }) {
    return _then(_$CharacterDetailsPageDataStateImpl(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
      relatedCharacters: null == relatedCharacters
          ? _value._relatedCharacters
          : relatedCharacters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$CharacterDetailsPageDataStateImpl
    implements CharacterDetailsPageDataState {
  const _$CharacterDetailsPageDataStateImpl(
      {required this.character,
      required final List<Character> relatedCharacters})
      : _relatedCharacters = relatedCharacters;

  @override
  final Character character;
  final List<Character> _relatedCharacters;
  @override
  List<Character> get relatedCharacters {
    if (_relatedCharacters is EqualUnmodifiableListView)
      return _relatedCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedCharacters);
  }

  @override
  String toString() {
    return 'CharacterDetailsPageState.data(character: $character, relatedCharacters: $relatedCharacters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailsPageDataStateImpl &&
            (identical(other.character, character) ||
                other.character == character) &&
            const DeepCollectionEquality()
                .equals(other._relatedCharacters, _relatedCharacters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character,
      const DeepCollectionEquality().hash(_relatedCharacters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailsPageDataStateImplCopyWith<
          _$CharacterDetailsPageDataStateImpl>
      get copyWith => __$$CharacterDetailsPageDataStateImplCopyWithImpl<
          _$CharacterDetailsPageDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Character character, List<Character> relatedCharacters)
        data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return data(character, relatedCharacters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character, List<Character> relatedCharacters)?
        data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return data?.call(character, relatedCharacters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character, List<Character> relatedCharacters)?
        data,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(character, relatedCharacters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterDetailsPageDataState value) data,
    required TResult Function(CharacterDetailsPageLoadingState value) loading,
    required TResult Function(CharacterDetailsPageErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterDetailsPageDataState value)? data,
    TResult? Function(CharacterDetailsPageLoadingState value)? loading,
    TResult? Function(CharacterDetailsPageErrorState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterDetailsPageDataState value)? data,
    TResult Function(CharacterDetailsPageLoadingState value)? loading,
    TResult Function(CharacterDetailsPageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class CharacterDetailsPageDataState
    implements CharacterDetailsPageState {
  const factory CharacterDetailsPageDataState(
          {required final Character character,
          required final List<Character> relatedCharacters}) =
      _$CharacterDetailsPageDataStateImpl;

  Character get character;
  List<Character> get relatedCharacters;
  @JsonKey(ignore: true)
  _$$CharacterDetailsPageDataStateImplCopyWith<
          _$CharacterDetailsPageDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterDetailsPageLoadingStateImplCopyWith<$Res> {
  factory _$$CharacterDetailsPageLoadingStateImplCopyWith(
          _$CharacterDetailsPageLoadingStateImpl value,
          $Res Function(_$CharacterDetailsPageLoadingStateImpl) then) =
      __$$CharacterDetailsPageLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterDetailsPageLoadingStateImplCopyWithImpl<$Res>
    extends _$CharacterDetailsPageStateCopyWithImpl<$Res,
        _$CharacterDetailsPageLoadingStateImpl>
    implements _$$CharacterDetailsPageLoadingStateImplCopyWith<$Res> {
  __$$CharacterDetailsPageLoadingStateImplCopyWithImpl(
      _$CharacterDetailsPageLoadingStateImpl _value,
      $Res Function(_$CharacterDetailsPageLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterDetailsPageLoadingStateImpl
    implements CharacterDetailsPageLoadingState {
  const _$CharacterDetailsPageLoadingStateImpl();

  @override
  String toString() {
    return 'CharacterDetailsPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailsPageLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Character character, List<Character> relatedCharacters)
        data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character, List<Character> relatedCharacters)?
        data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character, List<Character> relatedCharacters)?
        data,
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
    required TResult Function(CharacterDetailsPageDataState value) data,
    required TResult Function(CharacterDetailsPageLoadingState value) loading,
    required TResult Function(CharacterDetailsPageErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterDetailsPageDataState value)? data,
    TResult? Function(CharacterDetailsPageLoadingState value)? loading,
    TResult? Function(CharacterDetailsPageErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterDetailsPageDataState value)? data,
    TResult Function(CharacterDetailsPageLoadingState value)? loading,
    TResult Function(CharacterDetailsPageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterDetailsPageLoadingState
    implements CharacterDetailsPageState {
  const factory CharacterDetailsPageLoadingState() =
      _$CharacterDetailsPageLoadingStateImpl;
}

/// @nodoc
abstract class _$$CharacterDetailsPageErrorStateImplCopyWith<$Res> {
  factory _$$CharacterDetailsPageErrorStateImplCopyWith(
          _$CharacterDetailsPageErrorStateImpl value,
          $Res Function(_$CharacterDetailsPageErrorStateImpl) then) =
      __$$CharacterDetailsPageErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterDetailsPageErrorStateImplCopyWithImpl<$Res>
    extends _$CharacterDetailsPageStateCopyWithImpl<$Res,
        _$CharacterDetailsPageErrorStateImpl>
    implements _$$CharacterDetailsPageErrorStateImplCopyWith<$Res> {
  __$$CharacterDetailsPageErrorStateImplCopyWithImpl(
      _$CharacterDetailsPageErrorStateImpl _value,
      $Res Function(_$CharacterDetailsPageErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterDetailsPageErrorStateImpl
    implements CharacterDetailsPageErrorState {
  const _$CharacterDetailsPageErrorStateImpl();

  @override
  String toString() {
    return 'CharacterDetailsPageState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailsPageErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Character character, List<Character> relatedCharacters)
        data,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character, List<Character> relatedCharacters)?
        data,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character, List<Character> relatedCharacters)?
        data,
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
    required TResult Function(CharacterDetailsPageDataState value) data,
    required TResult Function(CharacterDetailsPageLoadingState value) loading,
    required TResult Function(CharacterDetailsPageErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterDetailsPageDataState value)? data,
    TResult? Function(CharacterDetailsPageLoadingState value)? loading,
    TResult? Function(CharacterDetailsPageErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterDetailsPageDataState value)? data,
    TResult Function(CharacterDetailsPageLoadingState value)? loading,
    TResult Function(CharacterDetailsPageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharacterDetailsPageErrorState
    implements CharacterDetailsPageState {
  const factory CharacterDetailsPageErrorState() =
      _$CharacterDetailsPageErrorStateImpl;
}
