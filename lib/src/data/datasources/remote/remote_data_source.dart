import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:im_mottu_mobile/src/data/models/character_data_wrapper_model/character_data_wrapper_model.dart';

abstract interface class RemoteDataSource {
  Future<CharacterDataWrapperModel> getCharacters({int offset, int limit});
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client _client;
  final String _baseUrl = 'gateway.marvel.com';
  final String _apiKey = dotenv.env['MARVEL_API_KEY']!;

  RemoteDataSourceImpl(this._client);

  @override
  Future<CharacterDataWrapperModel> getCharacters({
    int offset = 0,
    int limit = 20,
  }) async {
    final uri = Uri.https(
      _baseUrl,
      '/v1/public/characters',
      {
        'apikey': _apiKey,
        'offset': offset.toString(),
        'limit': limit.toString(),
      },
    );

    try {
      final response = await _client.get(uri);

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonMap = json.decode(response.body);
        final data = CharacterDataWrapperModel.fromJson(jsonMap);
        return data;
      } else {
        throw Exception('Failed to load characters');
      }
    } catch (e) {
      rethrow;
    }
  }
}
