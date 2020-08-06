import 'package:mobx/mobx.dart';

part 'item_information_controller.g.dart';

class ItemInformationController = _ItemInformationControllerBase
    with _$ItemInformationController;

abstract class _ItemInformationControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
