import 'package:mobx/mobx.dart';

part 'installed_controller.g.dart';

class InstalledController = _InstalledControllerBase with _$InstalledController;

abstract class _InstalledControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
