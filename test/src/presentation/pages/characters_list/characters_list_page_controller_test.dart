import 'package:flutter_test/flutter_test.dart';
import 'package:im_mottu_mobile/src/domain/entities/entities.dart';
import 'package:im_mottu_mobile/src/presentation/presentation.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:im_mottu_mobile/src/domain/usecases/get_characters_use_case.dart';

import 'characters_list_page_controller_test.mocks.dart';

@GenerateMocks([GetCharactersUseCase])
void main() {
  late CharactersListPageController controller;
  late MockGetCharactersUseCase mockGetCharactersUseCase;

  setUp(() {
    mockGetCharactersUseCase = MockGetCharactersUseCase();
    controller = CharactersListPageController(mockGetCharactersUseCase);
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

  final tCharacterList = [tCharacter];

  test('should load initial data', () async {
    // Arrange
    when(mockGetCharactersUseCase(
      offset: 0,
      limit: 20,
      nameStartsWith: '',
      orderBy: OrderBy.name,
    )).thenAnswer((_) async => tCharacterList);

    // Act
    await controller.loadData();

    // Assert
    expect(controller.isLoading.value, false);
    expect(controller.characters, tCharacterList);
  });

  test('should load more data', () async {
    // Arrange
    controller.characters.value = tCharacterList;
    when(mockGetCharactersUseCase(
      offset: 1,
      limit: 20,
      nameStartsWith: '',
      orderBy: OrderBy.name,
    )).thenAnswer((_) async => tCharacterList);

    // Act
    await controller.loadData(isLoadMore: true);

    // Assert
    expect(controller.isLoadingMore.value, false);
    expect(controller.characters, containsAll(tCharacterList));
  });

  test('should search characters with debounce', () async {
    // Arrange
    when(mockGetCharactersUseCase(
      offset: 0,
      limit: 20,
      nameStartsWith: 'Spid',
      orderBy: OrderBy.name,
    )).thenAnswer((_) async => tCharacterList);

    // Act
    controller.setSearchTerm('Spid');
    await Future.delayed(
        const Duration(milliseconds: 1100)); // wait for debounce

    // Assert
    expect(controller.isLoading.value, false);
    expect(controller.characters, tCharacterList);
  });

  test('should change order of characters', () async {
    // Arrange
    when(mockGetCharactersUseCase(
      offset: 0,
      limit: 20,
      nameStartsWith: '',
      orderBy: OrderBy.modified,
    )).thenAnswer((_) async => tCharacterList);

    // Act
    await controller.setOrderBy(OrderBy.modified);

    // Assert
    expect(controller.isLoading.value, false);
    expect(controller.characters, tCharacterList);
  });
}
