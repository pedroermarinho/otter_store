import 'package:mobx/mobx.dart';

part 'item_project_controller.g.dart';

class ItemProjectController = _ItemProjectControllerBase
    with _$ItemProjectController;

abstract class _ItemProjectControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
