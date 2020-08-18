import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/repositories/packages_local/appimage_local_repository.dart';
import 'package:otter_store/app/repositories/packages_local/flatpak_local_repository.dart';
import 'package:otter_store/app/repositories/packages_local/snap_local_repository.dart';
import 'package:otter_store/app/services/snap_service.dart';

part 'splash_screen_controller.g.dart';

class SplashScreenController = _SplashScreenControllerBase
    with _$SplashScreenController;

abstract class _SplashScreenControllerBase with Store {
  final _snapLocalController = Modular.get<SnapLocalRepository>();
  final _appImageLocalController = Modular.get<AppimageLocalRepository>();
  final _flatpakLocalController = Modular.get<FlatpakLocalRepository>();
  final _snapService = Modular.get<SnapService>();

  @observable
  bool load = false;

  @action
  recovery() async {
    load = true;
    try {
      if (_snapLocalController.length() == 0)
        await _snapLocalController.recovery();
    } catch (e) {
      print("Erro de conexão");
    }

    try {
      if (_appImageLocalController.length() == 0)
        await _appImageLocalController.recovery();
    } catch (e) {
      print("Erro de conexão");
    }
    try {
      if (_flatpakLocalController.length() == 0)
        await _flatpakLocalController.recovery();
    } catch (e) {
      print("Erro de conexão");
    }
    try {
      _snapService.recoveryAppsInstalled();
    } catch (e) {
      print("Erro de conexão");
    }
    load = false;
    pushHome();
  }

  pushHome() {
    Modular.to.pushReplacementNamed("/home");
  }
}
