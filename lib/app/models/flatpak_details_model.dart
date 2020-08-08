import 'package:hive/hive.dart';

part 'flatpak_details_model.g.dart';

@HiveType(typeId: 7)
class FlatpakDetailsModel {

  @HiveField(0)
  String flatpakAppId;

  @HiveField(1)
  String name;

  @HiveField(2)
  String summary;

  @HiveField(3)
  String description;

  @HiveField(4)
  String developerName;

  @HiveField(5)
  String projectLicense;

  @HiveField(6)
  String homepageUrl;

  @HiveField(7)
  String bugtrackerUrl;

  @HiveField(8)
  String helpUrl;

  @HiveField(9)
  String donationUrl;

  @HiveField(10)
  String translateUrl;

  @HiveField(11)
  String iconDesktopUrl;

  @HiveField(12)
  String iconMobileUrl;

  @HiveField(13)
  String downloadFlatpakRefUrl;

  @HiveField(14)
  String currentReleaseVersion;

  @HiveField(15)
  String currentReleaseDate;

  @HiveField(16)
  String currentReleaseDescription;

  @HiveField(17)
  String inStoreSinceDate;

  @HiveField(18)
  double rating;

  @HiveField(19)
  int ratingVotes;

  @HiveField(20)
  List<Categories> categories;

  @HiveField(21)
  List<Screenshots> screenshots;

  FlatpakDetailsModel(
      {this.flatpakAppId,
        this.name,
        this.summary,
        this.description,
        this.developerName,
        this.projectLicense,
        this.homepageUrl,
        this.bugtrackerUrl,
        this.helpUrl,
        this.donationUrl,
        this.translateUrl,
        this.iconDesktopUrl,
        this.iconMobileUrl,
        this.downloadFlatpakRefUrl,
        this.currentReleaseVersion,
        this.currentReleaseDate,
        this.currentReleaseDescription,
        this.inStoreSinceDate,
        this.rating,
        this.ratingVotes,
        this.categories,
        this.screenshots});

  FlatpakDetailsModel.fromJson(Map<String, dynamic> json) {
    flatpakAppId = json['flatpakAppId'];
    name = json['name'];
    summary = json['summary'];
    description = json['description'];
    developerName = json['developerName'];
    projectLicense = json['projectLicense'];
    homepageUrl = json['homepageUrl'];
    bugtrackerUrl = json['bugtrackerUrl'];
    helpUrl = json['helpUrl'];
    donationUrl = json['donationUrl'];
    translateUrl = json['translateUrl'];
    iconDesktopUrl = json['iconDesktopUrl'];
    iconMobileUrl = json['iconMobileUrl'];
    downloadFlatpakRefUrl = json['downloadFlatpakRefUrl'];
    currentReleaseVersion = json['currentReleaseVersion'];
    currentReleaseDate = json['currentReleaseDate'];
    currentReleaseDescription = json['currentReleaseDescription'];
    inStoreSinceDate = json['inStoreSinceDate'];
    rating = json['rating'];
    ratingVotes = json['ratingVotes'];
    if (json['categories'] != null) {
      categories = new List<Categories>();
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
    if (json['screenshots'] != null) {
      screenshots = new List<Screenshots>();
      json['screenshots'].forEach((v) {
        screenshots.add(new Screenshots.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flatpakAppId'] = this.flatpakAppId;
    data['name'] = this.name;
    data['summary'] = this.summary;
    data['description'] = this.description;
    data['developerName'] = this.developerName;
    data['projectLicense'] = this.projectLicense;
    data['homepageUrl'] = this.homepageUrl;
    data['bugtrackerUrl'] = this.bugtrackerUrl;
    data['helpUrl'] = this.helpUrl;
    data['donationUrl'] = this.donationUrl;
    data['translateUrl'] = this.translateUrl;
    data['iconDesktopUrl'] = this.iconDesktopUrl;
    data['iconMobileUrl'] = this.iconMobileUrl;
    data['downloadFlatpakRefUrl'] = this.downloadFlatpakRefUrl;
    data['currentReleaseVersion'] = this.currentReleaseVersion;
    data['currentReleaseDate'] = this.currentReleaseDate;
    data['currentReleaseDescription'] = this.currentReleaseDescription;
    data['inStoreSinceDate'] = this.inStoreSinceDate;
    data['rating'] = this.rating;
    data['ratingVotes'] = this.ratingVotes;
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    if (this.screenshots != null) {
      data['screenshots'] = this.screenshots.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@HiveType(typeId: 8)
class Categories {

  @HiveField(0)
  String name;

  Categories({this.name});

  Categories.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

@HiveType(typeId: 9)
class Screenshots {

  @HiveField(0)
  String thumbUrl;

  @HiveField(1)
  String imgMobileUrl;

  @HiveField(2)
  String imgDesktopUrl;

  Screenshots({this.thumbUrl, this.imgMobileUrl, this.imgDesktopUrl});

  Screenshots.fromJson(Map<String, dynamic> json) {
    thumbUrl = json['thumbUrl'];
    imgMobileUrl = json['imgMobileUrl'];
    imgDesktopUrl = json['imgDesktopUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbUrl'] = this.thumbUrl;
    data['imgMobileUrl'] = this.imgMobileUrl;
    data['imgDesktopUrl'] = this.imgDesktopUrl;
    return data;
  }
}