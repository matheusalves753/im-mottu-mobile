import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../character_data_container_model/character_data_container_model.dart';

part 'character_data_wrapper_model.freezed.dart';
part 'character_data_wrapper_model.g.dart';

@freezed
@HiveType(typeId: 0)
class CharacterDataWrapperModel with _$CharacterDataWrapperModel {
  const factory CharacterDataWrapperModel({
    @HiveField(0) required int? code,
    @HiveField(1) required String? status,
    @HiveField(2) required String? copyright,
    @HiveField(3) required String? attributionText,
    @HiveField(4) required String? attributionHTML,
    @HiveField(5) required CharacterDataContainerModel? data,
    @HiveField(6) required String? etag,
  }) = _CharacterDataWrapperModel;

  factory CharacterDataWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterDataWrapperModelFromJson(json);
}
