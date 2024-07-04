import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/character.dart';
import '../thumbnail_model/thumbnail_model.dart';
import '../comic_list_model/comic_list_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    required int? id,
    required String? name,
    required String? description,
    required DateTime? modified,
    required String? resourceURI,
    required ThumbnailModel? thumbnail,
    required ComicListModel? comics,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}

extension CharacterModelExtension on CharacterModel {
  Character toEntity() {
    return Character(
      id: id,
      name: name,
      description: description,
      modified: modified,
      resourceURI: resourceURI,
      thumbnail: thumbnail?.toEntity(),
      comics: comics?.toEntity(),
    );
  }
}
