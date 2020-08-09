import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/shared/config/theme/themes_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themes = Modular.get<ThemesController>();
    themes.setContext(context);
    return Observer(
      builder: (_) => MaterialApp(
        navigatorKey: Modular.navigatorKey,
        title: 'Otter Store',
        theme: themes.themeActual,
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
      ),
    );
  }
}
