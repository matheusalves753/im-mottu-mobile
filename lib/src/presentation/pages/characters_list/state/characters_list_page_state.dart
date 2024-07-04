import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';

part 'characters_list_page_state.freezed.dart';

@freezed
class CharactersListPageState with _$CharactersListPageState {
  const factory CharactersListPageState.data({
    required List<Character> characters,
  }) = CharactersListPageDataState;

  const factory CharactersListPageState.loading() =
      CharactersListPageLoadingState;

  const factory CharactersListPageState.error() = CharactersListPageErrorState;
}
