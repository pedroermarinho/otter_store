import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/shared/config/theme/themes.dart';
import 'package:otter_store/app/shared/config/theme/themes_controller.dart';

part 'container1_controller.g.dart';

class Container1Controller = _Container1ControllerBase
    with _$Container1Controller;

abstract class _Container1ControllerBase with Store {
  final _themesController = Modular.get<ThemesController>();

  @computed
  bool get isThemeDark {
    return _themesController.theme == ThemeOption.darkTheme;
  }

  @action
  void changeTheme() {
    _themesController.changeTheme();
  }
}
