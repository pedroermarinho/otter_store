import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/modules/home/home_controller.dart';
import 'package:otter_store/app/shared/config/theme/themes.dart';
import 'package:otter_store/app/shared/config/theme/themes_controller.dart';

part 'settings_controller.g.dart';

class SettingsController = _SettingsControllerBase with _$SettingsController;

abstract class _SettingsControllerBase with Store {
  final _themesController = Modular.get<ThemesController>();
  final _homeController = Modular.get<HomeController>();

  @computed
  bool get isThemeDark {
    return _themesController.theme == ThemeOption.darkTheme;
  }

  @action
  void changeTheme() {
    _themesController.changeTheme();
  }

  @action
  void openProjects() {
    _homeController.openProjects();
  }

  @action
  void openAbout() {
    _homeController.openAbout();
  }
}
