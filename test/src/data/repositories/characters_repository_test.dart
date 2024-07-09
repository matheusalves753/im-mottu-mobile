import 'package:flutter_test/flutter_test.dart';
import 'package:im_mottu_mobile/src/data/models/comic_list_model/comic_list_model.dart';
import 'package:im_mottu_mobile/src/data/models/thumbnail_model/thumbnail_model.dart';
import 'package:im_mottu_mobile/src/data/repositories/characters_repository.dart';
import 'package:im_mottu_mobile/src/domain/entities/entities.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:im_mottu_mobile/src/data/datasources/remote/remote_data_source.dart';
import 'package:im_mottu_mobile/src/data/models/character_model/character_model.dart';
import 'package:im_mottu_mobile/src/data/models/character_data_wrapper_model/character_data_wrapper_model.dart';
import 'package:im_mottu_mobile/src/data/models/character_data_container_model/character_data_container_model.dart';
import 'package:im_mottu_mobile/src/data/models/enums/order_by_model.dart';
import 'characters_repository_test.mocks.dart';

@GenerateMocks([RemoteDataSource])
void main() {
  late CharacterRepositoryImpl repository;
  late MockRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    repository = CharacterRepositoryImpl(mockRemoteDataSource);
  });

  group('getCharacters', () {
    const tOffset = 0;
    const tLimit = 20;
    const tNameStartsWith = 'Spider';
    const tOrderBy = OrderBy.name;
    const tThumbnailModel =
        ThumbnailModel(path: 'path/to/image', extension: 'jpg');
    const tComicListModel = ComicListModel(
        available: 10,
        collectionURI: 'http://test.com',
        items: [],
        returned: 10);
    final tCharacterModel = CharacterModel(
      id: 1009610,
      name: 'Spider-Man',
      description: 'A superhero in New York',
      modified: DateTime.now(),
      resourceURI: 'http://test.com',
      thumbnail: tThumbnailModel,
      comics: tComicListModel,
    );
    final tCharacter = Character(
      id: 1009610,
      name: 'Spider-Man',
      description: 'A superhero in New York',
      modified: tCharacterModel.modified,
      resourceURI: 'http://test.com',
      thumbnail: tThumbnailModel.toEntity(),
      comics: tComicListModel.toEntity(),
    );
    final tCharacterDataWrapperModel = CharacterDataWrapperModel(
      code: 200,
      status: 'Ok',
      data: CharacterDataContainerModel(
        offset: tOffset,
        limit: tLimit,
        total: 1,
        count: 1,
        results: [tCharacterModel],
      ),
      copyright: '',
      attributionText: '',
      attributionHTML: '',
      etag: '',
    );

    test(
        'should return list of Character when the call to remote data source is successful',
        () async {
      // Arrange
      when(mockRemoteDataSource.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: OrderByModel.name,
      )).thenAnswer((_) async => tCharacterDataWrapperModel);

      // Act
      final result = await repository.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      );

      // Assert
      verify(mockRemoteDataSource.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: OrderByModel.name,
      ));
      expect(result, equals([tCharacter]));
    });

    test('should return an empty list when the data source returns null data',
        () async {
      // Arrange
      const emptyDataWrapper = CharacterDataWrapperModel(
        code: 200,
        status: 'Ok',
        data: CharacterDataContainerModel(
          offset: tOffset,
          limit: tLimit,
          total: 0,
          count: 0,
          results: [],
        ),
        copyright: '',
        attributionText: '',
        attributionHTML: '',
        etag: '',
      );
      when(mockRemoteDataSource.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: OrderByModel.name,
      )).thenAnswer((_) async => emptyDataWrapper);

      // Act
      final result = await repository.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      );

      // Assert
      expect(result, equals([]));
    });
  });

  group('getRelatedCharacters', () {
    const tCharacterId = 1009610;
    const tThumbnailModel =
        ThumbnailModel(path: 'path/to/image', extension: 'jpg');
    const tComicListModel = ComicListModel(
        available: 10,
        collectionURI: 'http://test.com',
        items: [],
        returned: 10);
    final tCharacterModel = CharacterModel(
      id: 1009610,
      name: 'Spider-Man',
      description: 'A superhero in New York',
      modified: DateTime.now(),
      resourceURI: 'http://test.com',
      thumbnail: tThumbnailModel,
      comics: tComicListModel,
    );
    final tCharacter = Character(
      id: 1009610,
      name: 'Spider-Man',
      description: 'A superhero in New York',
      modified: tCharacterModel.modified,
      resourceURI: 'http://test.com',
      thumbnail: tThumbnailModel.toEntity(),
      comics: tComicListModel.toEntity(),
    );
    final tCharacterDataWrapperModel = CharacterDataWrapperModel(
      code: 200,
      status: 'Ok',
      data: CharacterDataContainerModel(
        offset: 0,
        limit: 20,
        total: 1,
        count: 1,
        results: [tCharacterModel],
      ),
      copyright: '',
      attributionText: '',
      etag: '',
      attributionHTML: '',
    );

    test(
        'should return list of related Characters when the call to remote data source is successful',
        () async {
      // Arrange
      when(mockRemoteDataSource.getRelatedCharacters(tCharacterId))
          .thenAnswer((_) async => tCharacterDataWrapperModel);

      // Act
      final result = await repository.getRelatedCharacters(tCharacterId);

      // Assert
      verify(mockRemoteDataSource.getRelatedCharacters(tCharacterId));
      expect(result, equals([tCharacter]));
    });

    test('should return an empty list when the data source returns null data',
        () async {
      // Arrange
      const emptyDataWrapper = CharacterDataWrapperModel(
        code: 200,
        status: 'Ok',
        data: CharacterDataContainerModel(
          offset: 0,
          limit: 20,
          total: 0,
          count: 0,
          results: [],
        ),
        copyright: '',
        attributionText: '',
        attributionHTML: '',
        etag: '',
      );
      when(mockRemoteDataSource.getRelatedCharacters(tCharacterId))
          .thenAnswer((_) async => emptyDataWrapper);

      // Act
      final result = await repository.getRelatedCharacters(tCharacterId);

      // Assert
      expect(result, equals([]));
    });
  });
}
