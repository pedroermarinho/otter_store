import 'package:mobx/mobx.dart';

part 'skills_controller.g.dart';

class SkillsController = _SkillsControllerBase with _$SkillsController;

abstract class _SkillsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
