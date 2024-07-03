import '../entities/character.dart';

abstract interface class CharacterRepository {
  Future<List<Character>> getCharacters({int offset, int limit});
}
