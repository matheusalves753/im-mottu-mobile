// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_data_wrapper_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ComicDataWrapperModelAdapter extends TypeAdapter<ComicDataWrapperModel> {
  @override
  final int typeId = 1;

  @override
  ComicDataWrapperModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ComicDataWrapperModel(
      code: fields[0] as int?,
      status: fields[1] as String?,
      copyright: fields[2] as String?,
      attributionText: fields[3] as String?,
      attributionHTML: fields[4] as String?,
      data: fields[5] as ComicDataContainerModel?,
      etag: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ComicDataWrapperModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(2)
      ..write(obj.copyright)
      ..writeByte(3)
      ..write(obj.attributionText)
      ..writeByte(4)
      ..write(obj.attributionHTML)
      ..writeByte(5)
      ..write(obj.data)
      ..writeByte(6)
      ..write(obj.etag);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComicDataWrapperModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicDataWrapperModelImpl _$$ComicDataWrapperModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ComicDataWrapperModelImpl(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      attributionText: json['attributionText'] as String?,
      attributionHTML: json['attributionHTML'] as String?,
      data: json['data'] == null
          ? null
          : ComicDataContainerModel.fromJson(
              json['data'] as Map<String, dynamic>),
      etag: json['etag'] as String?,
    );

Map<String, dynamic> _$$ComicDataWrapperModelImplToJson(
        _$ComicDataWrapperModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHTML': instance.attributionHTML,
      'data': instance.data,
      'etag': instance.etag,
    };
