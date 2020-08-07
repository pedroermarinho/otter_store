// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flatpak_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FlatpakDetailsModelAdapter extends TypeAdapter<FlatpakDetailsModel> {
  @override
  final int typeId = 7;

  @override
  FlatpakDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FlatpakDetailsModel(
      flatpakAppId: fields[0] as String,
      name: fields[1] as String,
      summary: fields[2] as String,
      description: fields[3] as String,
      developerName: fields[4] as String,
      projectLicense: fields[5] as String,
      homepageUrl: fields[6] as String,
      bugtrackerUrl: fields[7] as String,
      helpUrl: fields[8] as String,
      donationUrl: fields[9] as String,
      translateUrl: fields[10] as String,
      iconDesktopUrl: fields[11] as String,
      iconMobileUrl: fields[12] as String,
      downloadFlatpakRefUrl: fields[13] as String,
      currentReleaseVersion: fields[14] as String,
      currentReleaseDate: fields[15] as String,
      currentReleaseDescription: fields[16] as String,
      inStoreSinceDate: fields[17] as String,
      rating: fields[18] as int,
      ratingVotes: fields[19] as int,
      categories: (fields[20] as List)?.cast<Categories>(),
      screenshots: (fields[21] as List)?.cast<Screenshots>(),
    );
  }

  @override
  void write(BinaryWriter writer, FlatpakDetailsModel obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.flatpakAppId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.summary)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.developerName)
      ..writeByte(5)
      ..write(obj.projectLicense)
      ..writeByte(6)
      ..write(obj.homepageUrl)
      ..writeByte(7)
      ..write(obj.bugtrackerUrl)
      ..writeByte(8)
      ..write(obj.helpUrl)
      ..writeByte(9)
      ..write(obj.donationUrl)
      ..writeByte(10)
      ..write(obj.translateUrl)
      ..writeByte(11)
      ..write(obj.iconDesktopUrl)
      ..writeByte(12)
      ..write(obj.iconMobileUrl)
      ..writeByte(13)
      ..write(obj.downloadFlatpakRefUrl)
      ..writeByte(14)
      ..write(obj.currentReleaseVersion)
      ..writeByte(15)
      ..write(obj.currentReleaseDate)
      ..writeByte(16)
      ..write(obj.currentReleaseDescription)
      ..writeByte(17)
      ..write(obj.inStoreSinceDate)
      ..writeByte(18)
      ..write(obj.rating)
      ..writeByte(19)
      ..write(obj.ratingVotes)
      ..writeByte(20)
      ..write(obj.categories)
      ..writeByte(21)
      ..write(obj.screenshots);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlatpakDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CategoriesAdapter extends TypeAdapter<Categories> {
  @override
  final int typeId = 8;

  @override
  Categories read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Categories(
      name: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Categories obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoriesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ScreenshotsAdapter extends TypeAdapter<Screenshots> {
  @override
  final int typeId = 9;

  @override
  Screenshots read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Screenshots(
      thumbUrl: fields[0] as String,
      imgMobileUrl: fields[1] as String,
      imgDesktopUrl: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Screenshots obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.thumbUrl)
      ..writeByte(1)
      ..write(obj.imgMobileUrl)
      ..writeByte(2)
      ..write(obj.imgDesktopUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScreenshotsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
