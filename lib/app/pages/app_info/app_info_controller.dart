import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/models/appimage_model.dart';
import 'package:otter_store/app/models/snap_model.dart';
import 'package:otter_store/app/repositories/packages_local/appimage_local_repository.dart';
import 'package:otter_store/app/repositories/packages_local/snap_local_repository.dart';
import 'package:otter_store/app/shared/config/constants.dart';
import 'package:otter_store/app/shared/utils/packages.dart';

part 'app_info_controller.g.dart';

class AppInfoController = _AppInfoControllerBase with _$AppInfoController;

abstract class _AppInfoControllerBase with Store {
  final _snapLocalController = Modular.get<SnapLocalRepository>();
  final _appImageLocalController = Modular.get<AppimageLocalRepository>();

  SnapModel snapModel;
  AppImageModel appImageModel;

  @observable
  String iconUrl;

  @observable
  String description;

  @observable
  String name;

  @observable
  List<String> screenshotUrls = List();


  setApp(String id, TypePackages type){
    print("id $id -> type $type");
    switch (type){
      case TypePackages.snap:
        _recoverySnap(id);
        break;
      case TypePackages.flatpak:
        // TODO: Handle this case.
        break;
      case TypePackages.appImage:
        _recoveryAppImage(id);
        break;
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

  _recoveryAppImage(String id){
    appImageModel = _appImageLocalController.get(id);
    if(appImageModel!=null){

      if(appImageModel.icons!=null && appImageModel.icons.length>0){
        iconUrl = Constants.RAW_APPIMAGE+appImageModel?.icons[0];
      }
      name = appImageModel.name;
      description = appImageModel.description;
      appImageModel.screenshots.forEach((element) {
        screenshotUrls.add(Constants.RAW_APPIMAGE+element);
      });


    }
  }

}
