// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snap_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SnapModelAdapter extends TypeAdapter<SnapModel> {
  @override
  final int typeId = 1;

  @override
  SnapModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SnapModel(
      anonDownloadUrl: fields[0] as String,
      apps: (fields[1] as List)?.cast<String>(),
      architecture: (fields[2] as List)?.cast<String>(),
      base: fields[3] as String,
      binaryFilesize: fields[4] as int,
      channel: fields[5] as String,
      confinement: fields[6] as String,
      contact: fields[7] as String,
      content: fields[8] as String,
      datePublished: fields[9] as String,
      description: fields[10] as String,
      developerId: fields[11] as String,
      developerName: fields[12] as String,
      developerValidation: fields[13] as String,
      downloadSha3384: fields[14] as String,
      downloadSha512: fields[15] as String,
      downloadUrl: fields[16] as String,
      iconUrl: fields[17] as String,
      lastUpdated: fields[18] as String,
      license: fields[19] as String,
      name: fields[20] as String,
      origin: fields[21] as String,
      packageName: fields[22] as String,
      private: fields[23] as bool,
      publisher: fields[24] as String,
      ratingsAverage: fields[25] as double,
      release: (fields[26] as List)?.cast<String>(),
      revision: fields[27] as int,
      screenshotUrls: (fields[28] as List)?.cast<String>(),
      snapId: fields[29] as String,
      summary: fields[30] as String,
      supportUrl: fields[31] as String,
      title: fields[32] as String,
      version: fields[33] as String,
      website: fields[34] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SnapModel obj) {
    writer
      ..writeByte(35)
      ..writeByte(0)
      ..write(obj.anonDownloadUrl)
      ..writeByte(1)
      ..write(obj.apps)
      ..writeByte(2)
      ..write(obj.architecture)
      ..writeByte(3)
      ..write(obj.base)
      ..writeByte(4)
      ..write(obj.binaryFilesize)
      ..writeByte(5)
      ..write(obj.channel)
      ..writeByte(6)
      ..write(obj.confinement)
      ..writeByte(7)
      ..write(obj.contact)
      ..writeByte(8)
      ..write(obj.content)
      ..writeByte(9)
      ..write(obj.datePublished)
      ..writeByte(10)
      ..write(obj.description)
      ..writeByte(11)
      ..write(obj.developerId)
      ..writeByte(12)
      ..write(obj.developerName)
      ..writeByte(13)
      ..write(obj.developerValidation)
      ..writeByte(14)
      ..write(obj.downloadSha3384)
      ..writeByte(15)
      ..write(obj.downloadSha512)
      ..writeByte(16)
      ..write(obj.downloadUrl)
      ..writeByte(17)
      ..write(obj.iconUrl)
      ..writeByte(18)
      ..write(obj.lastUpdated)
      ..writeByte(19)
      ..write(obj.license)
      ..writeByte(20)
      ..write(obj.name)
      ..writeByte(21)
      ..write(obj.origin)
      ..writeByte(22)
      ..write(obj.packageName)
      ..writeByte(23)
      ..write(obj.private)
      ..writeByte(24)
      ..write(obj.publisher)
      ..writeByte(25)
      ..write(obj.ratingsAverage)
      ..writeByte(26)
      ..write(obj.release)
      ..writeByte(27)
      ..write(obj.revision)
      ..writeByte(28)
      ..write(obj.screenshotUrls)
      ..writeByte(29)
      ..write(obj.snapId)
      ..writeByte(30)
      ..write(obj.summary)
      ..writeByte(31)
      ..write(obj.supportUrl)
      ..writeByte(32)
      ..write(obj.title)
      ..writeByte(33)
      ..write(obj.version)
      ..writeByte(34)
      ..write(obj.website);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SnapModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
