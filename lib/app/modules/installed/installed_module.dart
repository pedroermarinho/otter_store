import 'installed_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'installed_page.dart';

class InstalledModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => InstalledController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => InstalledPage()),
      ];

  static Inject get to => Inject<InstalledModule>.of();
}
