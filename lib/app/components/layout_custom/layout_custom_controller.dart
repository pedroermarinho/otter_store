import 'package:mobx/mobx.dart';

part 'layout_custom_controller.g.dart';

class LayoutCustomController = _LayoutCustomControllerBase
    with _$LayoutCustomController;

abstract class _LayoutCustomControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
