import 'package:flutter_modular/flutter_modular.dart';

abstract class IFlatpakApiRepository implements Disposable {
  Future fetchPost();
}
