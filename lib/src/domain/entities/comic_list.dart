import 'package:equatable/equatable.dart';
import 'package:im_mottu_mobile/src/domain/entities/comic_summary.dart';

class ComicList extends Equatable {
  final int? available;
  final int? returned;
  final String? collectionURI;
  final List<ComicSummary>? items;

  const ComicList(
      {this.available, this.returned, this.collectionURI, this.items});

  @override
  List<Object?> get props => [available, returned, collectionURI, items];
}
