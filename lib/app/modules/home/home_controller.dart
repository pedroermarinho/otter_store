import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/modules/settings/settings_module.dart';
import 'package:otter_store/app/pages/about/about_page.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store implements Disposable {
  final Widget container = Container();
  @observable
  Widget config;

  @computed
  bool get isConfig {
    return config == null || config == container;
  }

  @action
  bool changeConfig() {
    if (config == null || config == container) {
      config = SettingsModule();
      return true;
    } else {
      config = container;
      return false;
    }
  }

  @observable
  Widget about = Container();

  @action
  void openAbout() {
    about = AboutPage();
  }

  @action
  void closeAbout() {
    about = Container();
  }

  final pageViewController = PageController();

  @override
  void dispose() {
    pageViewController.dispose();
  }
}
