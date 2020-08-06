import 'package:mobx/mobx.dart';

part 'container5_controller.g.dart';

class Container5Controller = _Container5ControllerBase
    with _$Container5Controller;

abstract class _Container5ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
