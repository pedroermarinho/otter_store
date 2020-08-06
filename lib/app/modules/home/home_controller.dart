import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/modules/projetcs/projetcs_module.dart';
import 'package:otter_store/app/pages/about/about_page.dart';
import 'package:otter_store/app/repositories/packages_local/snap_local_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store implements Disposable {
  final _snapLocalController = Modular.get<SnapLocalRepository>();

  @observable
  Widget projects = Container();


  init()async{
//    _snapLocalController.recovery();
     _snapLocalController.getAll().forEach((element) {
       if(element!=null){
         print(element.title);
         print("");
       }
     });
  }

  @action
  void openProjects() {
    projects = ProjetcsModule();
  }

  @action
  void closeProjects() {
    projects = Container();
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
