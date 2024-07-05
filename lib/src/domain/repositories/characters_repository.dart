import 'package:im_mottu_mobile/src/domain/entities/order_by.dart';

import '../entities/character.dart';

abstract interface class CharacterRepository {
  Future<List<Character>> getCharacters({
    int offset,
    int limit,
    String? nameStartsWith,
    OrderBy? orderBy,
  });

  Future<List<Character>> getRelatedCharacters(int characterId);
}
