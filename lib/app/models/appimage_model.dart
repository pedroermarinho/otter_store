import 'package:hive/hive.dart';

part 'appimage_model.g.dart';

@HiveType(typeId: 3)
class AppImageModel {
  @HiveField(0)
  String name;

  @HiveField(1)
  String description;

  @HiveField(2)
  List<String> categories;

  @HiveField(3)
  List<Authors> authors;

  @HiveField(4)
  String license;

  @HiveField(5)
  List<Links> links;

  @HiveField(6)
  List<String> icons;

  @HiveField(7)
  List<String> screenshots;

  AppImageModel({
    this.name,
    this.description,
    this.categories,
    this.authors,
    this.license,
    this.links,
    this.icons,
    this.screenshots,
  });

  AppImageModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    categories = json['categories'].cast<String>();
    if (json['authors'] != null) {
      authors = new List<Authors>();
      json['authors'].forEach((v) {
        authors.add(new Authors.fromJson(v));
      });
    }
    license = json['license'];
    if (json['links'] != null) {
      links = new List<Links>();
      json['links'].forEach((v) {
        links.add(new Links.fromJson(v));
      });
    }
    icons = json['icons'] == null ? null : json['icons'].cast<String>();
    screenshots =
        json['screenshots'] == null ? null : json['screenshots'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['categories'] = this.categories;
    if (this.authors != null) {
      data['authors'] = this.authors.map((v) => v.toJson()).toList();
    }
    data['license'] = this.license;
    if (this.links != null) {
      data['links'] = this.links.map((v) => v.toJson()).toList();
    }
    data['icons'] = this.icons;
    data['screenshots'] = this.screenshots;
    return data;
  }
}

@HiveType(typeId: 4)
class Authors {
  @HiveField(0)
  String name;

  @HiveField(1)
  String url;

  Authors({this.name, this.url});

  Authors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

@HiveType(typeId: 5)
class Links {
  @HiveField(0)
  String type;

  @HiveField(1)
  String url;

  Links({this.type, this.url});

  Links.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}
