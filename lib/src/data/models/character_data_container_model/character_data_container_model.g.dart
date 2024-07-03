// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_data_container_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterDataContainerModelImpl _$$CharacterDataContainerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterDataContainerModelImpl(
      offset: (json['offset'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CharacterDataContainerModelImplToJson(
        _$CharacterDataContainerModelImpl instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
