import 'package:im_mottu_mobile/src/data/models/character_model/character_model.dart';

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
  }) async {
    final characterDataWrapperModel = await remoteDataSource.getCharacters(
      offset: offset,
      limit: limit,
    );

    final characterModels = characterDataWrapperModel.data?.results ?? [];

    final characters =
        characterModels.map((model) => model.toEntity()).toList();

    return characters;
  }
}
