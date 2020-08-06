import 'package:flutter_modular/flutter_modular.dart';

abstract class ISnapApiRepository implements Disposable {
  Future fetchPost();
}
