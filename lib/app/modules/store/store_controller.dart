import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/components/application_icon/application_icon_widget.dart';
import 'package:otter_store/app/models/appimage_model.dart';
import 'package:otter_store/app/repositories/packages_local/appimage_local_repository.dart';
import 'package:otter_store/app/repositories/packages_local/flatpak_local_repository.dart';
import 'package:otter_store/app/repositories/packages_local/snap_local_repository.dart';
import 'package:otter_store/app/shared/config/constants.dart';
import 'package:otter_store/app/shared/utils/packages.dart';

part 'store_controller.g.dart';

class StoreController = _StoreControllerBase with _$StoreController;

abstract class _StoreControllerBase with Store {
  final _snapLocalController = Modular.get<SnapLocalRepository>();
  final _appImageLocalController = Modular.get<AppimageLocalRepository>();
  final _flatpakLocalController = Modular.get<FlatpakLocalRepository>();

  @observable
  String searchText = "";

  @action
  setSearchText(String value) => searchText = value;

  @observable
  ObservableList<ApplicationIconWidget> apps = ObservableList();


  _StoreControllerBase() {
    recovery();
  }


  @action
  searchApp(text) {
    if (text != null && text.isNotEmpty) {
      apps.clear();
      _snapLocalController.search(text).forEach(
        (element) {
          apps.add(
            ApplicationIconWidget(
              id: element.snapId,
              name: element.title,
              urlImg: element.iconUrl,
              typePackages: TypePackages.snap,
            ),
          );
        },
      );
      _flatpakLocalController.search(text).forEach(
            (element) {
          apps.add(
            ApplicationIconWidget(
              id: element.flatpakAppId,
              name: element.name,
              urlImg: Constants.FLATHUB+element.iconDesktopUrl,
              typePackages: TypePackages.flatpak,
            ),
          );
        },
      );
      _appImageLocalController.search(text).forEach(
            ( element) {
          final key = element.links
              .firstWhere(
                (element) => element.type == "GitHub",
            orElse: () => null,
          )
              ?.url;
          String urlIcon;
          if(element.icons!=null && element.icons.length>0){
            urlIcon = Constants.RAW_APPIMAGE+element?.icons[0];
          }
          apps.add(
            ApplicationIconWidget(
              id: key,
              name: element.name,
              urlImg: urlIcon,
              typePackages: TypePackages.appImage,
            ),
          );
        },
      );
      apps.sort((a,b)=> a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    } else {
      recovery();
    }
  }

  recovery() {
    apps.clear();
    _snapLocalController.getAll().forEach(
      (element) {
        apps.add(
          ApplicationIconWidget(
            id: element.snapId,
            name: element.title,
            urlImg: element.iconUrl,
            typePackages: TypePackages.snap,
          ),
        );
      },
    );
    _flatpakLocalController.getAll().forEach(
          (element) {
        apps.add(
          ApplicationIconWidget(
            id: element.flatpakAppId,
            name: element.name,
            urlImg: Constants.FLATHUB+ element.iconDesktopUrl,
            typePackages: TypePackages.flatpak,
          ),
        );
      },
    );
    _appImageLocalController.getAll().forEach(
      ( element) {
        final key = element.links
            .firstWhere(
              (element) => element.type == "GitHub",
              orElse: () => null,
            )
            ?.url;
         String urlIcon;
        if(element.icons!=null && element.icons.length>0){
          urlIcon = Constants.RAW_APPIMAGE+element?.icons[0];
        }
        apps.add(
          ApplicationIconWidget(
            id: key,
            name: element.name,
            urlImg: urlIcon,
            typePackages: TypePackages.appImage,
          ),
        );

      },
    );
    apps.sort((a,b)=> a.name.toLowerCase().compareTo(b.name.toLowerCase()));
  }
}
