import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';
import 'package:im_mottu_mobile/src/domain/usecases/get_related_characters_use_case.dart';
import 'character_details_page_state.dart';

class CharacterDetailsPageViewModel extends Cubit<CharacterDetailsPageState> {
  final GetRelatedCharactersUseCase _getRelatedCharactersUseCase;

  CharacterDetailsPageViewModel(this._getRelatedCharactersUseCase)
      : super(const CharacterDetailsPageState.loading());

  Future<void> loadCharacterDetails(Character character) async {
    try {
      emit(const CharacterDetailsPageState.loading());
      final relatedCharacters =
          await _getRelatedCharactersUseCase.call(character.id!);
      emit(CharacterDetailsPageState.data(
        character: character,
        relatedCharacters: relatedCharacters,
      ));
    } catch (e) {
      emit(const CharacterDetailsPageState.error());
    }
  }
}
