import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'projetcs_controller.dart';
import 'projetcs_page.dart';
import 'repositories/github/github_repository_controller.dart';

class ProjetcsModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProjetcsController()),
        Bind((i) => GithubRepositoryController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ProjetcsPage()),
      ];

  static Inject get to => Inject<ProjetcsModule>.of();

  @override
  // TODO: implement view
  Widget get view => ProjetcsPage();
}
