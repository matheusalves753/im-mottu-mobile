import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';

part 'character_details_page_state.freezed.dart';

@freezed
class CharacterDetailsPageState with _$CharacterDetailsPageState {
  const factory CharacterDetailsPageState.data({
    required Character character,
    required List<Character> relatedCharacters,
  }) = CharacterDetailsPageDataState;

  const factory CharacterDetailsPageState.loading() =
      CharacterDetailsPageLoadingState;

  const factory CharacterDetailsPageState.error() =
      CharacterDetailsPageErrorState;
}
