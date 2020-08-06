import 'package:mobx/mobx.dart';

part 'line_controller.g.dart';

class LineController = _LineControllerBase with _$LineController;

abstract class _LineControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
