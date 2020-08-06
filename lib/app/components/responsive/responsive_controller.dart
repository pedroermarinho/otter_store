import 'package:mobx/mobx.dart';

part 'responsive_controller.g.dart';

class ResponsiveController = _ResponsiveControllerBase
    with _$ResponsiveController;

abstract class _ResponsiveControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
