import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:im_mottu_mobile/src/domain/entities/comic.dart';

part 'comic_model.freezed.dart';
part 'comic_model.g.dart';

@freezed
class ComicModel with _$ComicModel {
  const factory ComicModel({
    required int? id,
    required String? title,
  }) = _ComicModel;

  factory ComicModel.fromJson(Map<String, dynamic> json) =>
      _$ComicModelFromJson(json);
}

extension ComicModelExtension on ComicModel {
  Comic toEntity() {
    return Comic(
      id: id,
      title: title,
    );
  }
}
