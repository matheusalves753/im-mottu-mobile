import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/comic_list.dart';
import '../comic_summary_model/comic_summary_model.dart';

part 'comic_list_model.freezed.dart';
part 'comic_list_model.g.dart';

@freezed
class ComicListModel with _$ComicListModel {
  const factory ComicListModel({
    required int? available,
    required int? returned,
    required String? collectionURI,
    required List<ComicSummaryModel>? items,
  }) = _ComicListModel;

  factory ComicListModel.fromJson(Map<String, dynamic> json) =>
      _$ComicListModelFromJson(json);
}

extension ComicListModelExtension on ComicListModel {
  ComicList toEntity() {
    return ComicList(
      available: available,
      returned: returned,
      collectionURI: collectionURI,
      items: items?.map((item) => item.toEntity()).toList(),
    );
  }
}
