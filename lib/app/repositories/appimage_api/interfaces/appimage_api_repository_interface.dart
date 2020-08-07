import 'package:flutter_modular/flutter_modular.dart';

abstract class IAppimageApiRepository implements Disposable {
  Future fetchPost();
}
