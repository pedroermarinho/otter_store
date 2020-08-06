import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/modules/home/home_controller.dart';

part 'about_controller.g.dart';

class AboutController = _AboutControllerBase with _$AboutController;

abstract class _AboutControllerBase with Store {
  final _homeController = Modular.get<HomeController>();

  @action
  void closeAbout() {
    _homeController.closeAbout();
  }

//  @observable
//  String appName = "";
//
//  @observable
//  String packageName = "";
//
//  @observable
//  String version = "";
//
//  @observable
//  String buildNumber = "";

  _AboutControllerBase() {
    recoverInformation();
  }

  @action
  recoverInformation() async {
//    PackageInfo.fromPlatform().then((packageInfo) {
//      appName = packageInfo.appName;
//      packageName = packageInfo.packageName;
//      version = packageInfo.version;
//      buildNumber = packageInfo.buildNumber;
//    });
  }
}
