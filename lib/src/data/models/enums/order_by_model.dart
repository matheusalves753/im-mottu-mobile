import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:im_mottu_mobile/src/domain/entities/order_by.dart';

@freezed
enum OrderByModel {
  @JsonValue('name')
  name,
  @JsonValue('-name')
  nameDesc,
  @JsonValue('modified')
  modified,
  @JsonValue('-modified')
  modifiedDesc;

  factory OrderByModel.fromEntity(OrderBy entity) {
    switch (entity) {
      case OrderBy.name:
        return OrderByModel.name;
      case OrderBy.nameDesc:
        return OrderByModel.nameDesc;
      case OrderBy.modified:
        return OrderByModel.modified;
      case OrderBy.modifiedDesc:
        return OrderByModel.modifiedDesc;
    }
  }

  String toJson() {
    return switch (this) {
      OrderByModel.name => 'name',
      OrderByModel.nameDesc => '-name',
      OrderByModel.modified => 'modified',
      OrderByModel.modifiedDesc => '-modified',
    };
  }

  OrderBy toEntity() {
    switch (this) {
      case OrderByModel.name:
        return OrderBy.name;
      case OrderByModel.nameDesc:
        return OrderBy.nameDesc;
      case OrderByModel.modified:
        return OrderBy.modified;
      case OrderByModel.modifiedDesc:
        return OrderBy.modifiedDesc;
    }
  }
}
