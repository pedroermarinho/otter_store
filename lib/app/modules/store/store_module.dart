import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'store_controller.dart';
import 'store_page.dart';

class StoreModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StoreController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => StorePage()),
      ];

  static Inject get to => Inject<StoreModule>.of();

  @override
  // TODO: implement view
  Widget get view =>  StorePage();
}
