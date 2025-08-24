// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_sub_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HealthInfoEntityAdapter extends TypeAdapter<HealthInfoEntity> {
  @override
  final int typeId = 1;

  @override
  HealthInfoEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthInfoEntity(
      healthTitle: fields[0] as String,
      healthSideTitle: fields[1] as String?,
      healthSubTitle: fields[2] as String,
      healthCardImg: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HealthInfoEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.healthTitle)
      ..writeByte(1)
      ..write(obj.healthSideTitle)
      ..writeByte(2)
      ..write(obj.healthSubTitle)
      ..writeByte(3)
      ..write(obj.healthCardImg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthInfoEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
