import 'package:flutter_modular/flutter_modular.dart';

abstract class IPackagesLocal extends Disposable {
  Future init();

  Future<void> toSave(Map data);

  Future delete(String key);

  dynamic get(String key);

  Iterable getAll();

  List search(String name);

  Future recovery();

  int length();
}
