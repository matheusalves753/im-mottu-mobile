import 'package:im_mottu_mobile/src/data/models/character_model/character_model.dart';
import 'package:im_mottu_mobile/src/data/models/enums/order_by_model.dart';
import 'package:im_mottu_mobile/src/domain/entities/order_by.dart';

import '../../domain/entities/character.dart';
import '../../domain/repositories/characters_repository.dart';
import '../datasources/remote/remote_data_source.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final RemoteDataSource remoteDataSource;

  CharacterRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Character>> getCharacters({
    int offset = 0,
    int limit = 20,
    String? nameStartsWith,
    OrderBy? orderBy,
  }) async {
    final characterDataWrapperModel = await remoteDataSource.getCharacters(
      offset: offset,
      limit: limit,
      nameStartsWith: nameStartsWith,
      orderBy: orderBy != null ? OrderByModel.fromEntity(orderBy) : null,
    );

    final characterModels = characterDataWrapperModel.data?.results ?? [];

    final characters =
        characterModels.map((model) => model.toEntity()).toList();

    return characters;
  }

  @override
  Future<List<Character>> getRelatedCharacters(int characterId) async {
    final characterDataWrapperModel =
        await remoteDataSource.getRelatedCharacters(characterId);

    final characterModels = characterDataWrapperModel.data?.results ?? [];

    final characters =
        characterModels.map((model) => model.toEntity()).toList();

    return characters;
  }
}
