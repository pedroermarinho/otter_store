import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'settings_controller.dart';
import 'settings_page.dart';

class SettingsModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SettingsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SettingsPage()),
      ];

  static Inject get to => Inject<SettingsModule>.of();

  @override
  // TODO: implement view
  Widget get view => SettingsPage();
}
