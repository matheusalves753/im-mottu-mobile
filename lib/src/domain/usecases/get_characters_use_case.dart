import '../entities/character.dart';
import '../repositories/characters_repository.dart';

abstract interface class GetCharactersUseCase {
  Future<List<Character>> call({int offset, int limit});
}

class GetCharactersUseCaseImpl implements GetCharactersUseCase {
  final CharacterRepository _repository;

  GetCharactersUseCaseImpl(this._repository);

  @override
  Future<List<Character>> call({
    int offset = 0,
    int limit = 20,
  }) async {
    return _repository.getCharacters(offset: offset, limit: limit);
  }
}
