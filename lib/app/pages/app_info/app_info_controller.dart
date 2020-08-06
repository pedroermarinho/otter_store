import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/models/snap_model.dart';
import 'package:otter_store/app/repositories/packages_local/snap_local_repository.dart';
import 'package:otter_store/app/shared/utils/packages.dart';

part 'app_info_controller.g.dart';

class AppInfoController = _AppInfoControllerBase with _$AppInfoController;

abstract class _AppInfoControllerBase with Store {
  final _snapLocalController = Modular.get<SnapLocalRepository>();

  SnapModel snapModel;

  @observable
  String iconUrl;

  @observable
  String description;

  @observable
  String name;

  @observable
  List<String> screenshotUrls;


  setApp(String id, TypePackages type){
    if(type == TypePackages.snap){
      _recoverySnap(id);
    }
  }

  _recoverySnap(String id){
    snapModel = _snapLocalController.get(id);
    if(snapModel!=null){
      iconUrl = snapModel.iconUrl;
      name = snapModel.title;
      description = snapModel.description;
      screenshotUrls = snapModel.screenshotUrls;
    }
  }

}
