import 'package:im_mottu_mobile/src/domain/entities/character.dart';
import 'package:im_mottu_mobile/src/domain/repositories/characters_repository.dart';

abstract interface class GetRelatedCharactersUseCase {
  Future<List<Character>> call(int characterId);
}

class GetRelatedCharactersUseCaseImpl implements GetRelatedCharactersUseCase {
  final CharacterRepository _repository;

  GetRelatedCharactersUseCaseImpl(this._repository);

  @override
  Future<List<Character>> call(int characterId) async {
    final relatedCharacters =
        await _repository.getRelatedCharacters(characterId);

    final filteredCharacters = relatedCharacters
        .where((character) => character.id != characterId)
        .toSet()
        .toList();

    return filteredCharacters;
  }
}
