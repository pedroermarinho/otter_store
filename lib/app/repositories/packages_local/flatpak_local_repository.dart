import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:otter_store/app/models/flatpak_model.dart';
import 'package:otter_store/app/repositories/flatpak_api/flatpak_api_repository.dart';
import 'package:path_provider/path_provider.dart';

import 'interfaces/packages_local_interface.dart';

class FlatpakLocalRepository implements IPackagesLocal{

  final _flatpakApiRepository = Modular.get<FlatpakApiRepository>();
  static Box _flatpakApiBox;
  static const String _nameBox = 'flatpak_box';

  FlatpakLocalRepository() {
    init();
  }

  @override
  Future delete(String key) async {
    if (_flatpakApiBox.containsKey(key)) {
      await _flatpakApiBox.delete(key);
    }
  }

  @override
  void dispose() {
    Hive.box(_nameBox).compact();
    Hive.close();
  }

  @override
  get(String key) => _flatpakApiBox.get(key);

  @override
  Iterable getAll() => _flatpakApiBox.values;

  @override
  Future init() async {
    Hive.registerAdapter(FlatpakModelAdapter());
    if(!kIsWeb){
      var docs = await getApplicationSupportDirectory();
      Hive.init(docs.path);
    }
    _flatpakApiBox = await Hive.openBox(_nameBox);
  }

  @override
  int length() => _flatpakApiBox.length;

  @override
  Future<bool> recovery() async {
    var apps = await _flatpakApiRepository.fetchPost();
    apps.forEach((element) {
      toSave(element);
    });
    return true;
  }

  @override
  List search(String name) => _flatpakApiBox.values
      .where((value) => value.name?.toLowerCase()?.startsWith(name?.toLowerCase()))
      .toList();

  @override
  Future<void> toSave(Map data) async {
    final FlatpakModel flatpak= FlatpakModel.fromJson(data);
    await _flatpakApiBox.put(flatpak.flatpakAppId, flatpak);
  }
}
