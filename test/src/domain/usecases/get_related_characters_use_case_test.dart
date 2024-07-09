import 'package:flutter_test/flutter_test.dart';
import 'package:im_mottu_mobile/src/domain/domain.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_related_characters_use_case_test.mocks.dart';

@GenerateMocks([CharacterRepository])
void main() {
  late GetRelatedCharactersUseCaseImpl useCase;
  late MockCharacterRepository mockCharacterRepository;

  setUp(() {
    mockCharacterRepository = MockCharacterRepository();
    useCase = GetRelatedCharactersUseCaseImpl(mockCharacterRepository);
  });

  group('GetRelatedCharactersUseCase', () {
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

    final tRelatedCharacter = Character(
      id: 1009611,
      name: 'Iron Man',
      description: 'A superhero in New York',
      modified: DateTime.now(),
      resourceURI: 'http://test.com',
      thumbnail: const Thumbnail(path: 'path/to/image', extension: 'jpg'),
      comics: tComicList,
    );

    final tCharacterList = [tCharacter, tRelatedCharacter];

    const tCharacterId = 1009610;

    test(
        'should return list of related characters excluding the original character',
        () async {
      // Arrange
      when(mockCharacterRepository.getRelatedCharacters(tCharacterId))
          .thenAnswer((_) async => tCharacterList);

      // Act
      final result = await useCase(tCharacterId);

      // Assert
      verify(mockCharacterRepository.getRelatedCharacters(tCharacterId));
      expect(result, equals([tRelatedCharacter]));
    });

    test('should return an empty list when no related characters are found',
        () async {
      // Arrange
      when(mockCharacterRepository.getRelatedCharacters(tCharacterId))
          .thenAnswer((_) async => []);

      // Act
      final result = await useCase(tCharacterId);

      // Assert
      verify(mockCharacterRepository.getRelatedCharacters(tCharacterId));
      expect(result, equals([]));
    });
  });
}
