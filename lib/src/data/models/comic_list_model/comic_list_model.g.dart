// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicListModelImpl _$$ComicListModelImplFromJson(Map<String, dynamic> json) =>
    _$ComicListModelImpl(
      available: (json['available'] as num?)?.toInt(),
      returned: (json['returned'] as num?)?.toInt(),
      collectionURI: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ComicSummaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ComicListModelImplToJson(
        _$ComicListModelImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'returned': instance.returned,
      'collectionURI': instance.collectionURI,
      'items': instance.items,
    };
