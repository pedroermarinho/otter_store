import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/repositories/packages_local/snap_local_repository.dart';

part 'splash_screen_controller.g.dart';

class SplashScreenController = _SplashScreenControllerBase
    with _$SplashScreenController;

abstract class _SplashScreenControllerBase with Store {
  final _snapLocalController = Modular.get<SnapLocalRepository>();

  @observable
  bool load = false;

  @action
  recovery() async {
    if (_snapLocalController.length() == 0) {
      load = true;
      await _snapLocalController.recovery();
      load = true;
      pushHome();
    } else {
      pushHome();
    }
  }

  pushHome() {
    Modular.to.pushNamed("/home");
  }
}
