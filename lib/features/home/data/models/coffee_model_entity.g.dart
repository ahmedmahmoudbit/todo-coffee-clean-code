// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_model_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoffeeModelEntityAdapter extends TypeAdapter<CoffeeModelEntity> {
  @override
  final int typeId = 0;

  @override
  CoffeeModelEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffeeModelEntity(
      name: fields[0] as String,
      suger: fields[1] as int,
      index: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CoffeeModelEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.suger)
      ..writeByte(2)
      ..write(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffeeModelEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoffeeModelEntityImpl _$$CoffeeModelEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CoffeeModelEntityImpl(
      name: json['name'] as String,
      suger: (json['suger'] as num).toInt(),
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$$CoffeeModelEntityImplToJson(
        _$CoffeeModelEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'suger': instance.suger,
      'index': instance.index,
    };
