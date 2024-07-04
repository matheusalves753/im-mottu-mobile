import 'package:freezed_annotation/freezed_annotation.dart';
import '../character_data_container_model/character_data_container_model.dart';

part 'character_data_wrapper_model.freezed.dart';
part 'character_data_wrapper_model.g.dart';

@freezed
class CharacterDataWrapperModel with _$CharacterDataWrapperModel {
  const factory CharacterDataWrapperModel({
    required int? code,
    required String? status,
    required String? copyright,
    required String? attributionText,
    required String? attributionHTML,
    required CharacterDataContainerModel? data,
    required String? etag,
  }) = _CharacterDataWrapperModel;

  factory CharacterDataWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterDataWrapperModelFromJson(json);
}
