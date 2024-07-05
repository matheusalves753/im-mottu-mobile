// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_data_container_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicDataContainerModelImpl _$$ComicDataContainerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ComicDataContainerModelImpl(
      offset: (json['offset'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ComicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ComicDataContainerModelImplToJson(
        _$ComicDataContainerModelImpl instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
