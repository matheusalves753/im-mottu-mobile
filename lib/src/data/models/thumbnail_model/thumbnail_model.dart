import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/thumbnail.dart';

part 'thumbnail_model.freezed.dart';
part 'thumbnail_model.g.dart';

@freezed
class ThumbnailModel with _$ThumbnailModel {
  const factory ThumbnailModel({
    required String? path,
    required String? extension,
  }) = _ThumbnailModel;

  factory ThumbnailModel.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailModelFromJson(json);
}

extension ThumbnailModelExtension on ThumbnailModel {
  Thumbnail toEntity() {
    return Thumbnail(
      path: path,
      extension: extension,
    );
  }
}
