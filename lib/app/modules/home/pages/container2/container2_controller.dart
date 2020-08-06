import 'package:mobx/mobx.dart';

part 'container2_controller.g.dart';

class Container2Controller = _Container2ControllerBase
    with _$Container2Controller;

abstract class _Container2ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
