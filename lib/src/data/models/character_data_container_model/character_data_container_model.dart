import 'package:freezed_annotation/freezed_annotation.dart';
import '../character_model/character_model.dart';

part 'character_data_container_model.freezed.dart';
part 'character_data_container_model.g.dart';

@freezed
class CharacterDataContainerModel with _$CharacterDataContainerModel {
  const factory CharacterDataContainerModel({
    required int? offset,
    required int? limit,
    required int? total,
    required int? count,
    required List<CharacterModel>? results,
  }) = _CharacterDataContainerModel;

  factory CharacterDataContainerModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterDataContainerModelFromJson(json);
}
