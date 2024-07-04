import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/comic_summary.dart';

part 'comic_summary_model.freezed.dart';
part 'comic_summary_model.g.dart';

@freezed
class ComicSummaryModel with _$ComicSummaryModel {
  const factory ComicSummaryModel({
    required String? resourceURI,
    required String? name,
  }) = _ComicSummaryModel;

  factory ComicSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ComicSummaryModelFromJson(json);
}

extension ComicSummaryModelExtension on ComicSummaryModel {
  ComicSummary toEntity() {
    return ComicSummary(
      resourceURI: resourceURI,
      name: name,
    );
  }
}
