import 'package:hive/hive.dart';

part 'snap_model.g.dart';

@HiveType(typeId : 1)
class SnapModel {
  List<Aliases> aliases;
  @HiveField(0)
  String anonDownloadUrl;
  @HiveField(1)
  List<String> apps;
  @HiveField(2)
  List<String> architecture;
  @HiveField(3)
  String base;
  @HiveField(4)
  int binaryFilesize;
  @HiveField(5)
  String channel;

//  List<Null> commonIds;
  @HiveField(6)
  String confinement;
  @HiveField(7)
  String contact;
  @HiveField(8)
  String content;
  @HiveField(9)
  String datePublished;

//  List<Null> deltas;
  @HiveField(10)
  String description;
  @HiveField(11)
  String developerId;
  @HiveField(12)
  String developerName;
  @HiveField(13)
  String developerValidation;
  @HiveField(14)
  String downloadSha3384;
  @HiveField(15)
  String downloadSha512;
  @HiveField(16)
  String downloadUrl;

//  List<Null> gatedSnapIds;
  @HiveField(17)
  String iconUrl;
  @HiveField(18)
  String lastUpdated;
  @HiveField(19)
  String license;
  @HiveField(20)
  String name;
  @HiveField(21)
  String origin;
  @HiveField(22)
  String packageName;

//  Prices prices;
  @HiveField(23)
  bool private;
  @HiveField(24)
  String publisher;
  @HiveField(25)
  double ratingsAverage;
  @HiveField(26)
  List<String> release;
  @HiveField(27)
  int revision;
  @HiveField(28)
  List<String> screenshotUrls;
  @HiveField(29)
  String snapId;
  @HiveField(30)
  String summary;
  @HiveField(31)
  String supportUrl;
  @HiveField(32)
  String title;
  @HiveField(33)
  String version;
  @HiveField(34)
  String website;

  SnapModel({
    this.aliases,
    this.anonDownloadUrl,
    this.apps,
    this.architecture,
    this.base,
    this.binaryFilesize,
    this.channel,
//    this.commonIds,
    this.confinement,
    this.contact,
    this.content,
    this.datePublished,
//    this.deltas,
    this.description,
    this.developerId,
    this.developerName,
    this.developerValidation,
    this.downloadSha3384,
    this.downloadSha512,
    this.downloadUrl,
//    this.gatedSnapIds,
    this.iconUrl,
    this.lastUpdated,
    this.license,
    this.name,
    this.origin,
    this.packageName,
//    this.prices,
    this.private,
    this.publisher,
    this.ratingsAverage,
    this.release,
    this.revision,
    this.screenshotUrls,
    this.snapId,
    this.summary,
    this.supportUrl,
    this.title,
    this.version,
    this.website,
  });

  SnapModel.fromJson(Map<String, dynamic> json) {
    if (json['aliases'] != null) {
      aliases = new List<Aliases>();
      json['aliases'].forEach((v) {
        aliases.add(new Aliases.fromJson(v));
      });
    }
    anonDownloadUrl = json['anon_download_url'];
    apps = json['apps'].cast<String>();
    architecture = json['architecture'].cast<String>();
    base = json['base'];
    binaryFilesize = json['binary_filesize'];
    channel = json['channel'];
//    if (json['common_ids'] != null) {
//      commonIds = new List<Null>();
//      json['common_ids'].forEach((v) {
//        commonIds.add(new Null.fromJson(v));
//      });
//    }
    confinement = json['confinement'];
    contact = json['contact'];
    content = json['content'];
    datePublished = json['date_published'];
//    if (json['deltas'] != null) {
//      deltas = new List<Null>();
//      json['deltas'].forEach((v) {
//        deltas.add(new Null.fromJson(v));
//      });
//    }
    description = json['description'];
    developerId = json['developer_id'];
    developerName = json['developer_name'];
    developerValidation = json['developer_validation'];
    downloadSha3384 = json['download_sha3_384'];
    downloadSha512 = json['download_sha512'];
    downloadUrl = json['download_url'];
//    if (json['gated_snap_ids'] != null) {
//      gatedSnapIds = new List<Null>();
//      json['gated_snap_ids'].forEach((v) {
//        gatedSnapIds.add(new Null.fromJson(v));
//      });
//    }
    iconUrl = json['icon_url'];
    lastUpdated = json['last_updated'];
    license = json['license'];
    name = json['name'];
    origin = json['origin'];
    packageName = json['package_name'];
//    prices =
//        json['prices'] != null ? new Prices.fromJson(json['prices']) : null;
    private = json['private'];
    publisher = json['publisher'];
    ratingsAverage = json['ratings_average'];
    release = json['release'].cast<String>();
    revision = json['revision'];
    screenshotUrls = json['screenshot_urls'].cast<String>();
    snapId = json['snap_id'];
    summary = json['summary'];
    supportUrl = json['support_url'];
    title = json['title'];
    version = json['version'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aliases != null) {
      data['aliases'] = this.aliases.map((v) => v.toJson()).toList();
    }
    data['anon_download_url'] = this.anonDownloadUrl;
    data['apps'] = this.apps;
    data['architecture'] = this.architecture;
    data['base'] = this.base;
    data['binary_filesize'] = this.binaryFilesize;
    data['channel'] = this.channel;
//    if (this.commonIds != null) {
//      data['common_ids'] = this.commonIds.map((v) => v.toJson()).toList();
//    }
    data['confinement'] = this.confinement;
    data['contact'] = this.contact;
    data['content'] = this.content;
    data['date_published'] = this.datePublished;
//    if (this.deltas != null) {
//      data['deltas'] = this.deltas.map((v) => v.toJson()).toList();
//    }
    data['description'] = this.description;
    data['developer_id'] = this.developerId;
    data['developer_name'] = this.developerName;
    data['developer_validation'] = this.developerValidation;
    data['download_sha3_384'] = this.downloadSha3384;
    data['download_sha512'] = this.downloadSha512;
    data['download_url'] = this.downloadUrl;
//    if (this.gatedSnapIds != null) {
//      data['gated_snap_ids'] =
//          this.gatedSnapIds.map((v) => v.toJson()).toList();
//    }
    data['icon_url'] = this.iconUrl;
    data['last_updated'] = this.lastUpdated;
    data['license'] = this.license;
    data['name'] = this.name;
    data['origin'] = this.origin;
    data['package_name'] = this.packageName;
//    if (this.prices != null) {
//      data['prices'] = this.prices.toJson();
//    }
    data['private'] = this.private;
    data['publisher'] = this.publisher;
    data['ratings_average'] = this.ratingsAverage;
    data['release'] = this.release;
    data['revision'] = this.revision;
//    data['screenshot_urls'] = this.screenshotUrls;
    data['snap_id'] = this.snapId;
    data['summary'] = this.summary;
    data['support_url'] = this.supportUrl;
    data['title'] = this.title;
    data['version'] = this.version;
    data['website'] = this.website;
    return data;
  }
}
@HiveType(typeId : 2)
class Aliases {
  @HiveField(0)
  String name;
  @HiveField(1)
  String target;

  Aliases({this.name, this.target});

  Aliases.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    target = json['target'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['target'] = this.target;
    return data;
  }
}
//
//class Prices {
//
//
//  Prices({});
//
//Prices.fromJson(Map<String, dynamic> json) {
//}
//
//Map<String, dynamic> toJson() {
//  final Map<String, dynamic> data = new Map<String, dynamic>();
//  return data;
//}
//}
