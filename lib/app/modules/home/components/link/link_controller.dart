import 'package:mobx/mobx.dart';

part 'link_controller.g.dart';

class LinkController = _LinkControllerBase with _$LinkController;

abstract class _LinkControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
