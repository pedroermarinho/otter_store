import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:otter_store/app/models/flatpak_details_model.dart';
import 'package:otter_store/app/repositories/flatpak_details_api/flatpak_details_api_repository.dart';
import 'package:path_provider/path_provider.dart';

import 'interfaces/packages_local_interface.dart';

class FlatpakDetailsLocalRepository implements IPackagesLocal {
  final _flatpakDetailsApiRepository =
      Modular.get<FlatpakDetailsApiRepository>();
  static Box flatpakDetailsApiBox;
  static const String _nameBox = 'flatpak_details_box';

  FlatpakDetailsLocalRepository() {
    init();
  }

  @override
  Future delete(String key) async {
    if (flatpakDetailsApiBox.containsKey(key)) {
      await flatpakDetailsApiBox.delete(key);
    }
  }

  @override
  void dispose() {
    Hive.box(_nameBox).compact();
    Hive.close();
  }

  @override
  get(String key) async {
    var result = flatpakDetailsApiBox.get(key);
    if (result == null) {
      result = FlatpakDetailsModel.fromJson(await recovery(flatpakAppId: key));
    }
    return result;
  }

  @override
  Iterable getAll() => flatpakDetailsApiBox.values;

  @override
  Future init() async {
    Hive.registerAdapter(FlatpakDetailsModelAdapter());
    Hive.registerAdapter(CategoriesAdapter());
    Hive.registerAdapter(ScreenshotsAdapter());
    if (!kIsWeb) {
      var docs = await getApplicationSupportDirectory();
      Hive.init(docs.path);
    }
    flatpakDetailsApiBox = await Hive.openBox(_nameBox);
  }

  @override
  int length() => flatpakDetailsApiBox.length;

  @override
  Future recovery({@required String flatpakAppId}) async {
    var apps = await _flatpakDetailsApiRepository.fetchPost(
        flatpakAppId: flatpakAppId);
    toSave(apps);
    return apps;
  }

  @override
  List search(String name) =>
      flatpakDetailsApiBox.values
          .where(
            (value) =>
            value.name?.toLowerCase()?.startsWith(name?.toLowerCase()),
      )
          .toList();

  @override
  Future<void> toSave(Map data) async {
    final FlatpakDetailsModel flatpak = FlatpakDetailsModel.fromJson(data);
    await flatpakDetailsApiBox.put(flatpak.flatpakAppId, flatpak);
  }
}
