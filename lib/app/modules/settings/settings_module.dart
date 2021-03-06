import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'settings_controller.dart';
import 'settings_page.dart';

class SettingsModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SettingsController()),
      ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, args) => SettingsPage()),
      ];

  static Inject get to => Inject<SettingsModule>.of();

  @override
  Widget get view => SettingsPage();
}
