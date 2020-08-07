import 'package:flutter_modular/flutter_modular.dart';

abstract class IFlatpakDetailsApiRepository implements Disposable {
  Future fetchPost();
}
