import 'package:flutter_test/flutter_test.dart';
import 'package:im_mottu_mobile/src/domain/entities/entities.dart';
import 'package:im_mottu_mobile/src/presentation/presentation.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:im_mottu_mobile/src/domain/usecases/get_related_characters_use_case.dart';

import 'character_details_page_controller_test.mocks.dart';

@GenerateMocks([GetRelatedCharactersUseCase])
void main() {
  late CharacterDetailsPageController controller;
  late MockGetRelatedCharactersUseCase mockGetRelatedCharactersUseCase;

  setUp(() {
    mockGetRelatedCharactersUseCase = MockGetRelatedCharactersUseCase();
    controller =
        CharacterDetailsPageController(mockGetRelatedCharactersUseCase);
  });

  final tCharacter = Character(
    id: 1009610,
    name: 'Spider-Man',
    description: 'A superhero in New York',
    modified: DateTime.now(),
    resourceURI: 'http://test.com',
    thumbnail: const Thumbnail(path: 'path/to/image', extension: 'jpg'),
    comics: const ComicList(
      available: 10,
      returned: 10,
      collectionURI: 'http://test.com/comics',
      items: [
        ComicSummary(resourceURI: 'http://test.com/comic/1', name: 'Comic 1')
      ],
    ),
  );

  final tRelatedCharacter = Character(
    id: 1009611,
    name: 'Iron Man',
    description: 'A superhero in New York',
    modified: DateTime.now(),
    resourceURI: 'http://test.com',
    thumbnail: const Thumbnail(path: 'path/to/image', extension: 'jpg'),
    comics: const ComicList(
      available: 10,
      returned: 10,
      collectionURI: 'http://test.com/comics',
      items: [
        ComicSummary(resourceURI: 'http://test.com/comic/1', name: 'Comic 1')
      ],
    ),
  );

  final tRelatedCharacters = [tRelatedCharacter];

  test(
      'should set character and relatedCharacters when loadCharacterDetails is called',
      () async {
    // Arrange
    when(mockGetRelatedCharactersUseCase.call(tCharacter.id!))
        .thenAnswer((_) async => tRelatedCharacters);

    // Act
    await controller.loadCharacterDetails(tCharacter);

    // Assert
    expect(controller.isLoading.value, false);
    expect(controller.hasError.value, false);
    expect(controller.character.value, tCharacter);
    expect(controller.relatedCharacters, tRelatedCharacters);
  });

  test('should set hasError to true when there is an error', () async {
    // Arrange
    when(mockGetRelatedCharactersUseCase.call(tCharacter.id!))
        .thenThrow(Exception('Error'));

    // Act
    await controller.loadCharacterDetails(tCharacter);

    // Assert
    expect(controller.isLoading.value, false);
    expect(controller.hasError.value, true);
  });
}
