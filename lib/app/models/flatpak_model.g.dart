// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flatpak_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FlatpakModelAdapter extends TypeAdapter<FlatpakModel> {
  @override
  final int typeId = 6;

  @override
  FlatpakModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FlatpakModel(
      flatpakAppId: fields[0] as String,
      name: fields[1] as String,
      summary: fields[2] as String,
      iconDesktopUrl: fields[3] as String,
      iconMobileUrl: fields[4] as String,
      currentReleaseVersion: fields[5] as String,
      currentReleaseDate: fields[6] as String,
      inStoreSinceDate: fields[7] as String,
      rating: fields[8] as double,
      ratingVotes: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, FlatpakModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.flatpakAppId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.summary)
      ..writeByte(3)
      ..write(obj.iconDesktopUrl)
      ..writeByte(4)
      ..write(obj.iconMobileUrl)
      ..writeByte(5)
      ..write(obj.currentReleaseVersion)
      ..writeByte(6)
      ..write(obj.currentReleaseDate)
      ..writeByte(7)
      ..write(obj.inStoreSinceDate)
      ..writeByte(8)
      ..write(obj.rating)
      ..writeByte(9)
      ..write(obj.ratingVotes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlatpakModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
