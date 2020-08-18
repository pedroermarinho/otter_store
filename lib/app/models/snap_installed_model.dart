class SnapInstalledModel {
  String name;
  String version;
  String rev;
  String tracking;
  String publisher;
  String notes;

  SnapInstalledModel({
    this.name,
    this.version,
    this.rev,
    this.tracking,
    this.publisher,
    this.notes,
  });

  factory SnapInstalledModel.fromJson(Map<String, dynamic> json) {
    return SnapInstalledModel(
      //field: json[''],
      name: json['name'],
      version: json['version'],
      rev: json['rev'],
      tracking: json['tracking'],
      publisher: json['publisher'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'version': version,
        'rev': rev,
        'tracking': tracking,
        'publisher': publisher,
        'notes': notes,
      };
}
