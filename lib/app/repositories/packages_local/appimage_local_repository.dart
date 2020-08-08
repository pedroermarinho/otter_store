import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:otter_store/app/models/appimage_model.dart';
import 'package:otter_store/app/repositories/appimage_api/appimage_api_repository.dart';
import 'package:path_provider/path_provider.dart';

import 'interfaces/packages_local_interface.dart';

class AppimageLocalRepository implements IPackagesLocal {
  final _appimageApiRepository = Modular.get<AppimageApiRepository>();
  static Box _appImageApiBox;
  static const String _nameBox = 'appimage_box';

  AppimageLocalRepository() {
    init();
  }

  @override
  Future delete(String key) async {
    if (_appImageApiBox.containsKey(key)) {
      await _appImageApiBox.delete(key);
    }
  }

  @override
  void dispose() {
    Hive.box(_nameBox).compact();
    Hive.close();
  }

  @override
  get(String key) => _appImageApiBox.get(key);

  @override
  Iterable getAll() => _appImageApiBox.values;

  @override
  Future init() async {
    Hive.registerAdapter(AppImageModelAdapter());
    Hive.registerAdapter(AuthorsAdapter());
    Hive.registerAdapter(LinksAdapter());
    if(!kIsWeb){
      var docs = await getApplicationSupportDirectory();
      Hive.init(docs.path);
    }
    _appImageApiBox = await Hive.openBox(_nameBox);
  }

  @override
  int length() => _appImageApiBox.length;

  @override
  Future<bool> recovery() async {
    var data = await _appimageApiRepository.fetchPost();

    final List apps = data["items"];

    apps.forEach((element) {
      toSave(element);
    });
    return true;
  }

  @override
  List search(String name) => _appImageApiBox.values
      .where((value) => value.name?.toLowerCase()?.startsWith(name?.toLowerCase()))
      .toList();

  @override
  Future<void> toSave(Map data) async {
    final AppImageModel appImage = AppImageModel.fromJson(data);
    if (appImage.links != null) {
      final key = appImage.links
          .firstWhere(
            (element) => element.type == "GitHub",
        orElse: () => null,
      )
          ?.url;
      if (key != null) await _appImageApiBox.put(key, appImage);
    }
  }
}
