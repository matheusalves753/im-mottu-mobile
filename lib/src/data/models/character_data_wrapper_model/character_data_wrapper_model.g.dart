// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_data_wrapper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterDataWrapperModelImpl _$$CharacterDataWrapperModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterDataWrapperModelImpl(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      attributionText: json['attributionText'] as String?,
      attributionHTML: json['attributionHTML'] as String?,
      data: json['data'] == null
          ? null
          : CharacterDataContainerModel.fromJson(
              json['data'] as Map<String, dynamic>),
      etag: json['etag'] as String?,
    );

Map<String, dynamic> _$$CharacterDataWrapperModelImplToJson(
        _$CharacterDataWrapperModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHTML': instance.attributionHTML,
      'data': instance.data,
      'etag': instance.etag,
    };
