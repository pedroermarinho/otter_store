import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/models/appimage_model.dart';
import 'package:otter_store/app/models/flatpak_details_model.dart';
import 'package:otter_store/app/models/snap_model.dart';
import 'package:otter_store/app/modules/store/store_controller.dart';
import 'package:otter_store/app/repositories/packages_local/appimage_local_repository.dart';
import 'package:otter_store/app/repositories/packages_local/flatpak_details_local_repository.dart';
import 'package:otter_store/app/repositories/packages_local/snap_local_repository.dart';
import 'package:otter_store/app/shared/config/constants.dart';
import 'package:otter_store/app/shared/utils/packages.dart';

part 'app_info_controller.g.dart';

class AppInfoController = _AppInfoControllerBase with _$AppInfoController;

abstract class _AppInfoControllerBase with Store {
  final _snapLocalController = Modular.get<SnapLocalRepository>();
  final _appImageLocalController = Modular.get<AppimageLocalRepository>();
  final _flatpakDetailsLocalController =
      Modular.get<FlatpakDetailsLocalRepository>();

  final _storeController = Modular.get<StoreController>();

  SnapModel snapModel;

  @observable
  FlatpakDetailsModel flatpakDetailsModel;

  AppImageModel appImageModel;

  @observable
  String iconUrl;

  @observable
  String description;

  @observable
  String name;

  @observable
  ObservableList<String> screenshotUrls = ObservableList();

  @observable
  String developerName;

  @observable
  String projectLicense;

  @observable
  String homepageUrl;

  @observable
  String version;

  @observable
  String categories;


  @observable
  String font;

  closeInfo() => _storeController.closeInfo();

  setApp(String key, TypePackages type) {
    switch (type) {
      case TypePackages.snap:
        _recoverySnap(key);
        break;
      case TypePackages.flatpak:
        _recoveryFlatpakDetails(key);
        break;
      case TypePackages.appImage:
        _recoveryAppImage(key);
        break;
    }
  }

  _recoverySnap(String key) {
    snapModel = _snapLocalController.get(key);
    if (snapModel != null) {
      iconUrl = snapModel.iconUrl;
      name = snapModel.title;
      description = snapModel.description;
      screenshotUrls = snapModel.screenshotUrls.asObservable();
      developerName = snapModel.developerName;
      projectLicense = snapModel.license;
      homepageUrl = snapModel.website;
      version = snapModel.version;
      categories = null;
      font = "Snap";
    }
  }

  @action
  _recoveryFlatpakDetails(String key) async {
    flatpakDetailsModel = await _flatpakDetailsLocalController.get(key);
    if (flatpakDetailsModel != null) {
      iconUrl = Constants.FLATHUB + flatpakDetailsModel.iconDesktopUrl;
      name = flatpakDetailsModel.name;
      description = flatpakDetailsModel.description;
      flatpakDetailsModel.screenshots.forEach((Screenshots element) {
        screenshotUrls.add(element.imgDesktopUrl);
      });
      developerName = flatpakDetailsModel.developerName;
      projectLicense = flatpakDetailsModel.projectLicense;
      homepageUrl = flatpakDetailsModel.homepageUrl;
      version = flatpakDetailsModel.currentReleaseVersion;
      categories = flatpakDetailsModel.categories[0]?.name;
      font = "Flatpak";
    }
  }

  _recoveryAppImage(String key) {
    appImageModel = _appImageLocalController.get(key);
    if (appImageModel != null) {
      if (appImageModel.icons != null && appImageModel.icons.length > 0) {
        iconUrl = Constants.RAW_APPIMAGE + appImageModel?.icons[0];
      }
      name = appImageModel.name;
      description = appImageModel.description;
      appImageModel.screenshots?.forEach((element) {
        screenshotUrls.add(Constants.RAW_APPIMAGE + element);
      });
      developerName = appImageModel.authors[0]?.name;
      projectLicense = appImageModel.license;
      final project = appImageModel.links.firstWhere(
              (element) => element.type == "GitHub",
          orElse: () =>
          null
      );
      homepageUrl = project ==null?null:"https://github.com/"+project.url;
      version = null;
      categories = appImageModel.categories[0];
      font = "AppImage";
    }
  }
}
