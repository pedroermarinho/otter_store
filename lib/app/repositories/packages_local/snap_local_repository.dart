import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:otter_store/app/models/snap_model.dart';
import 'package:otter_store/app/repositories/packages_local/interfaces/packages_local_interface.dart';
import 'package:otter_store/app/repositories/snap_api/snap_api_repository.dart';
import 'package:path_provider/path_provider.dart';

class SnapLocalRepository implements IPackagesLocal {
  final _snapApiRepository = Modular.get<SnapApiRepository>();

  static Box _snapApiBox;
  static const String _nameBox = 'snap_box';

  SnapLocalRepository() {
    init();
  }

  @override
  Future delete(String key) async {
    if (_snapApiBox.containsKey(key)) {
      await _snapApiBox.delete(key);
    }
  }

  @override
  dynamic get(String key) => _snapApiBox.get(key);

  int length() => _snapApiBox.length;

  @override
  Iterable<dynamic> getAll() => _snapApiBox.values;

  @override
  Future<void> toSave(Map data) async {
    final SnapModel snap = SnapModel.fromJson(data);
    return await _snapApiBox.put(snap.snapId, snap);
  }

  @override
  Future init() async {
    Hive.registerAdapter(SnapModelAdapter());
    Hive.registerAdapter(AliasesAdapter());
    var docs = await getApplicationDocumentsDirectory();
    Hive.init(docs.path);
    _snapApiBox = await Hive.openBox(_nameBox);
  }

  @override
  List<dynamic> search(String name) => _snapApiBox.values
      .where(
        (value) =>
            value.packageName?.toLowerCase()?.startsWith(name?.toLowerCase()),
      )
      .toList();

  @override
  Future<bool> recovery() async {
    var data = await _snapApiRepository.fetchPost();

    final dataString = data.toString();
    data = jsonDecode(dataString);

    final List<dynamic> apps = data['_embedded']['clickindex:package'];

    apps.forEach((element) {
      toSave(element);
    });
    return true;
  }

  @override
  void dispose() {
    Hive.box(_nameBox).compact();
    Hive.close();
  }
}
