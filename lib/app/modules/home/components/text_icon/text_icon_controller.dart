import 'package:mobx/mobx.dart';

part 'text_icon_controller.g.dart';

class TextIconController = _TextIconControllerBase with _$TextIconController;

abstract class _TextIconControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
