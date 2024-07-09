import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:im_mottu_mobile/src/data/datasources/remote/remote_data_source.dart';
import 'package:im_mottu_mobile/src/data/models/enums/order_by_model.dart';
import 'package:im_mottu_mobile/src/data/models/character_data_wrapper_model/character_data_wrapper_model.dart';
import 'package:im_mottu_mobile/src/infrastructure/services/hive_service.dart';
import 'package:im_mottu_mobile/src/infrastructure/exceptions/marvel_api_exception.dart';

import 'remote_data_source_test.mocks.dart';

@GenerateMocks([
  http.Client,
  HiveService,
  Box,
])
void main() {
  late RemoteDataSourceImpl dataSource;
  late MockClient mockHttpClient;
  late MockHiveService mockHiveService;
  late MockBox<dynamic> mockHiveBox;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    dotenv.env['MARVEL_PUBLIC_KEY'] = 'mockPublicKey';
    dotenv.env['MARVEL_PRIVATE_KEY'] = 'mockPrivateKey';
  });

  setUp(() {
    mockHttpClient = MockClient();
    mockHiveService = MockHiveService();
    mockHiveBox = MockBox<dynamic>();
    dataSource = RemoteDataSourceImpl(mockHttpClient, mockHiveService);

    when(mockHiveService.getBox(any)).thenAnswer((_) async => mockHiveBox);
    when(mockHiveBox.put(any, any)).thenAnswer((_) async => Future.value(null));
    when(mockHiveBox.containsKey(any)).thenReturn(false);
  });

  group('getCharacters', () {
    const tOffset = 0;
    const tLimit = 20;
    const tNameStartsWith = 'Spider';
    const tOrderBy = OrderByModel.name;
    final tCharacterDataWrapperJson = jsonEncode({
      'code': 200,
      'status': 'Ok',
      'data': {
        'offset': 0,
        'limit': 20,
        'total': 1,
        'count': 1,
        'results': [
          {
            'id': 1009610,
            'name': 'Spider-Man',
          }
        ],
      },
    });

    test(
        'should return CharacterDataWrapperModel when the response code is 200 (success)',
        () async {
      // Arrange
      when(mockHttpClient.get(
        argThat(isA<Uri>()),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(tCharacterDataWrapperJson, 200));

      // Act
      final result = await dataSource.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      );

      // Assert
      expect(result, isA<CharacterDataWrapperModel>());
    });

    test('should cache data locally when the response code is 200 (success)',
        () async {
      // Arrange
      when(mockHttpClient.get(
        argThat(isA<Uri>()),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(tCharacterDataWrapperJson, 200));

      // Act
      await dataSource.getCharacters(
        offset: tOffset,
        limit: tLimit,
        nameStartsWith: tNameStartsWith,
        orderBy: tOrderBy,
      );

      // Assert
      verify(mockHiveBox.put(any, tCharacterDataWrapperJson)).called(1);
    });

    test('should throw MarvelApiException on non-200 response', () async {
      // Arrange
      when(mockHttpClient.get(
        argThat(isA<Uri>()),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response('Unauthorized', 401));

      // Act
      final call = dataSource.getCharacters;

      // Assert
      expect(
          () => call(
                offset: tOffset,
                limit: tLimit,
                nameStartsWith: tNameStartsWith,
                orderBy: tOrderBy,
              ),
          throwsA(isA<MarvelApiException>()));
    });
  });

  group('getCharactersByComic', () {
    const tComicId = 12345;
    const tOffset = 0;
    const tLimit = 3;
    final tCharacterDataWrapperJson = jsonEncode({
      'code': 200,
      'status': 'Ok',
      'data': {
        'offset': 0,
        'limit': 3,
        'total': 1,
        'count': 1,
        'results': [
          {
            'id': 1009610,
            'name': 'Spider-Man',
          }
        ],
      },
    });

    test(
        'should return CharacterDataWrapperModel when the response code is 200 (success)',
        () async {
      // Arrange
      when(mockHttpClient.get(
        argThat(isA<Uri>()),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(tCharacterDataWrapperJson, 200));

      // Act
      final result = await dataSource.getCharactersByComic(
        comicId: tComicId,
        offset: tOffset,
        limit: tLimit,
      );

      // Assert
      expect(result, isA<CharacterDataWrapperModel>());
    });

    test('should cache data locally when the response code is 200 (success)',
        () async {
      // Arrange
      when(mockHttpClient.get(
        argThat(isA<Uri>()),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(tCharacterDataWrapperJson, 200));

      // Act
      await dataSource.getCharactersByComic(
        comicId: tComicId,
        offset: tOffset,
        limit: tLimit,
      );

      // Assert
      verify(mockHiveBox.put(any, tCharacterDataWrapperJson)).called(1);
    });

    test('should throw MarvelApiException on non-200 response', () async {
      // Arrange
      when(mockHttpClient.get(
        argThat(isA<Uri>()),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response('Unauthorized', 401));

      // Act
      final call = dataSource.getCharactersByComic;

      // Assert
      expect(
          () => call(
                comicId: tComicId,
                offset: tOffset,
                limit: tLimit,
              ),
          throwsA(isA<MarvelApiException>()));
    });
  });
}
