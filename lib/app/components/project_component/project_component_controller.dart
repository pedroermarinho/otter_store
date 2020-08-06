import 'package:mobx/mobx.dart';

part 'project_component_controller.g.dart';

class ProjectComponentController = _ProjectComponentControllerBase
    with _$ProjectComponentController;

abstract class _ProjectComponentControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
