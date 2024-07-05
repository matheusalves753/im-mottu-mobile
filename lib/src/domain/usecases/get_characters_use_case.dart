import 'package:im_mottu_mobile/src/domain/entities/order_by.dart';

import '../entities/character.dart';
import '../repositories/characters_repository.dart';

abstract interface class GetCharactersUseCase {
  Future<List<Character>> call({
    int offset,
    int limit,
    String? nameStartsWith,
    OrderBy? orderBy,
  });
}

class GetCharactersUseCaseImpl implements GetCharactersUseCase {
  final CharacterRepository _repository;

  GetCharactersUseCaseImpl(this._repository);

  @override
  Future<List<Character>> call({
    int offset = 0,
    int limit = 20,
    String? nameStartsWith,
    OrderBy? orderBy,
  }) async {
    return _repository.getCharacters(
      offset: offset,
      limit: limit,
      nameStartsWith: nameStartsWith,
      orderBy: orderBy,
    );
  }
}
