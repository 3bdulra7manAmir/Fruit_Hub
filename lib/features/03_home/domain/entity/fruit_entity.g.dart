// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FruitsEntityAdapter extends TypeAdapter<FruitEntity> {
  @override
  final typeId = 0;

  @override
  FruitEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FruitEntity(
      fruitId: fields[0] as String,
      name: fields[1] as String,
      price: (fields[2] as num).toDouble(),
      imgUrl: fields[3] as String,
      weight: (fields[4] as num).toDouble(),
      rateValue: (fields[5] as num).toDouble(),
      rateUsersCount: (fields[6] as num).toDouble(),
      rateDescription: fields[7] as String,
      healthInfo: fields[8] == null
          ? const []
          : (fields[8] as List).cast<HealthInfoEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, FruitEntity obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.fruitId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.imgUrl)
      ..writeByte(4)
      ..write(obj.weight)
      ..writeByte(5)
      ..write(obj.rateValue)
      ..writeByte(6)
      ..write(obj.rateUsersCount)
      ..writeByte(7)
      ..write(obj.rateDescription)
      ..writeByte(8)
      ..write(obj.healthInfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FruitsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
