import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:im_mottu_mobile/src/data/models/comic_data_container_model/comic_data_container_model.dart';

part 'comic_data_wrapper_model.freezed.dart';
part 'comic_data_wrapper_model.g.dart';

@freezed
@HiveType(typeId: 1)
class ComicDataWrapperModel with _$ComicDataWrapperModel {
  const factory ComicDataWrapperModel({
    @HiveField(0) required int? code,
    @HiveField(1) required String? status,
    @HiveField(2) required String? copyright,
    @HiveField(3) required String? attributionText,
    @HiveField(4) required String? attributionHTML,
    @HiveField(5) required ComicDataContainerModel? data,
    @HiveField(6) required String? etag,
  }) = _ComicDataWrapperModel;

  factory ComicDataWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$ComicDataWrapperModelFromJson(json);
}
