import 'package:flutter_test/flutter_test.dart';
import 'package:im_mottu_mobile/src/domain/entities/entities.dart';
import 'package:im_mottu_mobile/src/domain/usecases/get_characters_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:im_mottu_mobile/src/domain/repositories/characters_repository.dart';

import 'get_characters_use_case_test.mocks.dart';

@GenerateMocks([CharacterRepository])
void main() {
  late GetCharactersUseCaseImpl useCase;
  late MockCharacterRepository mockCharacterRepository;

  setUp(() {
    mockCharacterRepository = MockCharacterRepository();
    useCase = GetCharactersUseCaseImpl(mockCharacterRepository);
  });

  group('GetCharactersUseCase', () {
    const tComicSummary = ComicSummary(
      resourceURI: 'http://test.com/comic/1',
      name: 'Comic 1',
    );

    const tComicList = ComicList(
      available: 10,
      returned: 10,
      collectionURI: 'http://test.com/comics',
      items: [tComicSummary],
    );

    final tCharacter = Character(
      id: 1009610,
      name: 'Spider-Man',
      description: 'A superhero in New York',
      modified: DateTime.now(),
      resourceURI: 'http://test.com',
      thumbnail: const Thumbnail(path: 'path/to/image', extension: 'jpg'),
      comics: tComicList,
    );

    final tCharacterList = [tCharacter];

    const tOffset = 0;
    const tLimit = 20;
    const tNameStartsWith = 'Spider';
    const tOrderBy = OrderBy.name;

    test('should return list of characters from the repository', () async {
      // Arrange
      when(mockCharacterRepository.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      )).thenAnswer((_) async => tCharacterList);

      // Act
      final result = await useCase(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      );

      // Assert
      verify(mockCharacterRepository.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      ));
      expect(result, tCharacterList);
    });

    test('should return an empty list when no characters are found', () async {
      // Arrange
      when(mockCharacterRepository.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      )).thenAnswer((_) async => []);

      // Act
      final result = await useCase(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      );

      // Assert
      verify(mockCharacterRepository.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      ));
      expect(result, []);
    });
  });
}
