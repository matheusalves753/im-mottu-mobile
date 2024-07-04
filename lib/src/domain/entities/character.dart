import 'package:equatable/equatable.dart';
import 'package:im_mottu_mobile/src/domain/entities/thumbnail.dart';
import 'package:im_mottu_mobile/src/domain/entities/comic_list.dart';

class Character extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final DateTime? modified;
  final String? resourceURI;
  final Thumbnail? thumbnail;
  final ComicList? comics;

  const Character({
    this.id,
    this.name,
    this.description,
    this.modified,
    this.resourceURI,
    this.thumbnail,
    this.comics,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        modified,
        resourceURI,
        thumbnail,
        comics,
      ];
}
