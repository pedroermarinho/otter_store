import 'package:hive/hive.dart';

part 'flatpak_model.g.dart';

@HiveType(typeId: 6)
class FlatpakModel {

  @HiveField(0)
  String flatpakAppId;

  @HiveField(1)
  String name;

  @HiveField(2)
  String summary;

  @HiveField(3)
  String iconDesktopUrl;

  @HiveField(4)
  String iconMobileUrl;

  @HiveField(5)
  String currentReleaseVersion;

  @HiveField(6)
  String currentReleaseDate;

  @HiveField(7)
  String inStoreSinceDate;

  @HiveField(8)
  double rating;

  @HiveField(9)
  int ratingVotes;

  FlatpakModel(
      {this.flatpakAppId,
        this.name,
        this.summary,
        this.iconDesktopUrl,
        this.iconMobileUrl,
        this.currentReleaseVersion,
        this.currentReleaseDate,
        this.inStoreSinceDate,
        this.rating,
        this.ratingVotes});

  FlatpakModel.fromJson(Map<String, dynamic> json) {
    flatpakAppId = json['flatpakAppId'];
    name = json['name'];
    summary = json['summary'];
    iconDesktopUrl = json['iconDesktopUrl'];
    iconMobileUrl = json['iconMobileUrl'];
    currentReleaseVersion = json['currentReleaseVersion'];
    currentReleaseDate = json['currentReleaseDate'];
    inStoreSinceDate = json['inStoreSinceDate'];
    rating = json['rating'];
    ratingVotes = json['ratingVotes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flatpakAppId'] = this.flatpakAppId;
    data['name'] = this.name;
    data['summary'] = this.summary;
    data['iconDesktopUrl'] = this.iconDesktopUrl;
    data['iconMobileUrl'] = this.iconMobileUrl;
    data['currentReleaseVersion'] = this.currentReleaseVersion;
    data['currentReleaseDate'] = this.currentReleaseDate;
    data['inStoreSinceDate'] = this.inStoreSinceDate;
    data['rating'] = this.rating;
    data['ratingVotes'] = this.ratingVotes;
    return data;
  }
}
