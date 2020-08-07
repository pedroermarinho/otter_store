import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/app_controller.dart';
import 'package:otter_store/app/app_widget.dart';
import 'package:otter_store/app/components/layout_custom/layout_custom_controller.dart';
import 'package:otter_store/app/components/responsive/responsive_controller.dart';
import 'package:otter_store/app/modules/home/home_module.dart';
import 'package:otter_store/app/modules/projetcs/projetcs_module.dart';
import 'package:otter_store/app/pages/about/about_controller.dart';
import 'package:otter_store/app/pages/app_info/app_info_page.dart';
import 'package:otter_store/app/pages/splash_screen/splash_screen_controller.dart';
import 'package:otter_store/app/pages/splash_screen/splash_screen_page.dart';
import 'package:otter_store/app/repositories/shared_preferences/shared_preferences_repository_controller.dart';
import 'package:otter_store/app/shared/config/theme/themes_controller.dart';

import 'components/application_icon/application_icon_controller.dart';
import 'components/project_component/project_component_controller.dart';
import 'pages/app_info/app_info_controller.dart';
import 'repositories/appimage_api/appimage_api_repository.dart';
import 'repositories/appimage_api/interfaces/appimage_api_repository_interface.dart';
import 'repositories/packages_local/appimage_local_repository.dart';
import 'repositories/packages_local/snap_local_repository.dart';
import 'repositories/snap_api/snap_api_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppimageApiRepository(Dio())),
        Bind((i) => ApplicationIconController()),
        Bind((i) => AppInfoController()),
        Bind((i) => SnapApiRepository(Dio())),
        Bind((i) => SnapLocalRepository(), lazy: false),
        Bind((i) => AppimageLocalRepository(), lazy: false),

        Bind((i) => ProjectComponentController()),
        Bind((i) => SplashScreenController()),
        Bind((i) => AboutController()),
        Bind((i) => AppController()),
        Bind((i) => SharedPreferencesRepositoryController()),
        Bind((i) => ThemesController()),
        Bind((i) => LayoutCustomController()),
        Bind((i) => ResponsiveController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashScreenPage()),
        Router("/home", module: HomeModule()),
        Router("/projects", module: ProjetcsModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
