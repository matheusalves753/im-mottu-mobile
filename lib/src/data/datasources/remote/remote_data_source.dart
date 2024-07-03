import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:im_mottu_mobile/src/data/models/character_data_wrapper_model/character_data_wrapper_model.dart';

abstract interface class RemoteDataSource {
  Future<CharacterDataWrapperModel> getCharacters({int offset, int limit});
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client _client;
  final String _baseUrl = 'gateway.marvel.com';
  final String _publicKey = dotenv.env['MARVEL_PUBLIC_KEY']!;
  final String _privateKey = dotenv.env['MARVEL_PRIVATE_KEY']!;

  RemoteDataSourceImpl(this._client);

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
  }) async {
    final uri = _buildUrl('/v1/public/characters', {
      'offset': offset.toString(),
      'limit': limit.toString(),
    });

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
