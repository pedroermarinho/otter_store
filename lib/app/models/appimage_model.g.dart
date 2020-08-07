// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appimage_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppImageModelAdapter extends TypeAdapter<AppImageModel> {
  @override
  final int typeId = 3;

  @override
  AppImageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppImageModel(
      name: fields[0] as String,
      description: fields[1] as String,
      categories: (fields[2] as List)?.cast<String>(),
      authors: (fields[3] as List)?.cast<Authors>(),
      license: fields[4] as String,
      links: (fields[5] as List)?.cast<Links>(),
      icons: (fields[6] as List)?.cast<String>(),
      screenshots: (fields[7] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, AppImageModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.categories)
      ..writeByte(3)
      ..write(obj.authors)
      ..writeByte(4)
      ..write(obj.license)
      ..writeByte(5)
      ..write(obj.links)
      ..writeByte(6)
      ..write(obj.icons)
      ..writeByte(7)
      ..write(obj.screenshots);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppImageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthorsAdapter extends TypeAdapter<Authors> {
  @override
  final int typeId = 4;

  @override
  Authors read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Authors(
      name: fields[0] as String,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Authors obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LinksAdapter extends TypeAdapter<Links> {
  @override
  final int typeId = 5;

  @override
  Links read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Links(
      type: fields[0] as String,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Links obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
