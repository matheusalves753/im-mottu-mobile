// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicModelImpl _$$ComicModelImplFromJson(Map<String, dynamic> json) =>
    _$ComicModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ComicModelImplToJson(_$ComicModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
