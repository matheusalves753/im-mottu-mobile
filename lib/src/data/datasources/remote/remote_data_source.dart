import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:im_mottu_mobile/src/data/models/character_data_container_model/character_data_container_model.dart';
import 'package:im_mottu_mobile/src/data/models/character_data_wrapper_model/character_data_wrapper_model.dart';
import 'package:im_mottu_mobile/src/data/models/character_model/character_model.dart';
import 'package:im_mottu_mobile/src/data/models/comic_data_wrapper_model/comic_data_wrapper_model.dart';
import 'package:im_mottu_mobile/src/data/models/enums/order_by_model.dart';
import 'package:im_mottu_mobile/src/infrastructure/exceptions/marvel_api_conflict_exception.dart';
import 'package:im_mottu_mobile/src/infrastructure/exceptions/marvel_api_exception.dart';
import 'package:im_mottu_mobile/src/infrastructure/services/hive_service.dart';

abstract interface class RemoteDataSource {
  Future<CharacterDataWrapperModel> getCharacters({
    int offset,
    int limit,
    String? nameStartsWith,
    OrderByModel? orderBy,
  });

  Future<CharacterDataWrapperModel> getCharactersByComic({
    required int comicId,
    int offset = 0,
    int limit = 20,
  });

  Future<ComicDataWrapperModel> getComicsByCharacter(int characterId);

  Future<CharacterDataWrapperModel> getRelatedCharacters(int characterId);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client _client;
  final String _baseUrl = 'gateway.marvel.com';
  final String _publicKey = dotenv.env['MARVEL_PUBLIC_KEY']!;
  final String _privateKey = dotenv.env['MARVEL_PRIVATE_KEY']!;
  final HiveService _cacheManager;

  RemoteDataSourceImpl(this._client, this._cacheManager);

  Map<String, String> _generateAuthParams() {
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = md5
        .convert(utf8.encode('$timestamp$_privateKey$_publicKey'))
        .toString();

    return {
      'apikey': _publicKey,
      'ts': timestamp,
      'hash': hash,
    };
  }

  Uri _buildUrl(String path, Map<String, String> additionalParams) {
    final authParams = _generateAuthParams();
    final allParams = {...authParams, ...additionalParams};

    return Uri.https(_baseUrl, path, allParams);
  }

  @override
  Future<CharacterDataWrapperModel> getCharacters({
    int offset = 0,
    int limit = 20,
    String? nameStartsWith,
    OrderByModel? orderBy,
  }) async {
    final cacheBox = await _cacheManager.getBox('charactersBox');

    final cacheKey =
        'characters_${offset}_$limit${nameStartsWith ?? ''}_${orderBy?.name ?? ''}';

    if (cacheBox.containsKey(cacheKey)) {
      final cachedData = cacheBox.get(cacheKey) as String;
      final Map<String, dynamic> jsonMap = json.decode(cachedData);
      return CharacterDataWrapperModel.fromJson(jsonMap);
    }

    final queryParams = {
      'offset': offset.toString(),
      'limit': limit.toString(),
    };

    if (nameStartsWith != null) {
      queryParams['nameStartsWith'] = nameStartsWith;
    }

    if (orderBy != null) {
      queryParams['orderBy'] = orderBy.toJson();
    }

    final uri = _buildUrl('/v1/public/characters', queryParams);

    try {
      final response = await _client.get(uri);

      if (response.statusCode == 200) {
        final responseBody = response.body;
        cacheBox.put(cacheKey, responseBody);

        final Map<String, dynamic> jsonMap = json.decode(responseBody);
        return CharacterDataWrapperModel.fromJson(jsonMap);
      } else {
        _handleErrorResponse(response);
        throw Exception('Failed to load characters');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CharacterDataWrapperModel> getCharactersByComic({
    required int comicId,
    int offset = 0,
    int limit = 3,
  }) async {
    final cacheBox = await _cacheManager.getBox('charactersByComicBox');

    final cacheKey = 'charactersByComic_${comicId}_${offset}_$limit';

    if (cacheBox.containsKey(cacheKey)) {
      final cachedData = cacheBox.get(cacheKey) as String;
      final Map<String, dynamic> jsonMap = json.decode(cachedData);
      return CharacterDataWrapperModel.fromJson(jsonMap);
    }

    final queryParams = {
      'offset': offset.toString(),
      'limit': limit.toString(),
    };

    final uri = _buildUrl('/v1/public/comics/$comicId/characters', queryParams);

    try {
      final response = await _client.get(uri);

      if (response.statusCode == 200) {
        final responseBody = response.body;
        cacheBox.put(cacheKey, responseBody);

        final Map<String, dynamic> jsonMap = json.decode(responseBody);
        return CharacterDataWrapperModel.fromJson(jsonMap);
      } else {
        _handleErrorResponse(response);
        throw Exception('Failed to load characters by comic');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ComicDataWrapperModel> getComicsByCharacter(int characterId) async {
    final cacheBox = await _cacheManager.getBox('comicsByCharacterBox');

    final cacheKey = 'comicsByCharacter_$characterId';

    if (cacheBox.containsKey(cacheKey)) {
      final cachedData = cacheBox.get(cacheKey) as String;
      final Map<String, dynamic> jsonMap = json.decode(cachedData);
      return ComicDataWrapperModel.fromJson(jsonMap);
    }

    final queryParams = {
      'limit': '4',
    };

    final uri =
        _buildUrl('/v1/public/characters/$characterId/comics', queryParams);

    try {
      final response = await _client.get(uri);

      if (response.statusCode == 200) {
        final responseBody = response.body;
        cacheBox.put(cacheKey, responseBody);

        final Map<String, dynamic> jsonMap = json.decode(responseBody);
        return ComicDataWrapperModel.fromJson(jsonMap);
      } else {
        _handleErrorResponse(response);
        throw Exception('Failed to load comics for character $characterId');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CharacterDataWrapperModel> getRelatedCharacters(
      int characterId) async {
    final comicWrapper = await getComicsByCharacter(characterId);
    final List<int> comicIds =
        comicWrapper.data?.results?.map((comic) => comic.id!).toList() ?? [];
    final List<CharacterModel> allRelatedCharacters = [];

    for (int comicId in comicIds) {
      final charactersWrapper = await getCharactersByComic(comicId: comicId);
      final List<CharacterModel>? characters = charactersWrapper.data?.results;
      if (characters != null) {
        allRelatedCharacters.addAll(characters);
      }
    }

    return CharacterDataWrapperModel(
      code: 200,
      status: 'Success',
      copyright: comicWrapper.copyright,
      attributionText: comicWrapper.attributionText,
      attributionHTML: comicWrapper.attributionHTML,
      data: CharacterDataContainerModel(
        offset: 0,
        limit: allRelatedCharacters.length,
        total: allRelatedCharacters.length,
        count: allRelatedCharacters.length,
        results: allRelatedCharacters,
      ),
      etag: comicWrapper.etag,
    );
  }

  void _handleErrorResponse(http.Response response) {
    switch (response.statusCode) {
      case 401:
        throw MarvelApiException('Unauthorized: Invalid or missing API key.',
            code: response.statusCode);
      case 403:
        throw MarvelApiException('Forbidden: Access denied.',
            code: response.statusCode);
      case 404:
        throw MarvelApiException(
            'Not Found: The requested resource was not found.',
            code: response.statusCode);
      case 409:
        final Map<String, dynamic> errorResponse = json.decode(response.body);
        final errorMessage = errorResponse['status'] ??
            'Conflict: There was a problem with the request.';
        throw MarvelApiConflictException(errorMessage);
      case 500:
        throw MarvelApiException(
            'Internal Server Error: Please try again later.',
            code: response.statusCode);
      default:
        throw MarvelApiException('Unknown error occurred.',
            code: response.statusCode);
    }
  }
}
