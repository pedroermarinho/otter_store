import 'package:mobx/mobx.dart';

part 'container3_controller.g.dart';

class Container3Controller = _Container3ControllerBase
    with _$Container3Controller;

abstract class _Container3ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
