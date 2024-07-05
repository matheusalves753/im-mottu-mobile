import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:im_mottu_mobile/src/data/models/comic_model/comic_model.dart';

part 'comic_data_container_model.freezed.dart';
part 'comic_data_container_model.g.dart';

@freezed
class ComicDataContainerModel with _$ComicDataContainerModel {
  const factory ComicDataContainerModel({
    required int? offset,
    required int? limit,
    required int? total,
    required int? count,
    required List<ComicModel>? results,
  }) = _ComicDataContainerModel;

  factory ComicDataContainerModel.fromJson(Map<String, dynamic> json) =>
      _$ComicDataContainerModelFromJson(json);
}
