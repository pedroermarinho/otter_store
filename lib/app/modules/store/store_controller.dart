import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/components/application_icon/application_icon_widget.dart';
import 'package:otter_store/app/repositories/packages_local/snap_local_repository.dart';
import 'package:otter_store/app/shared/utils/packages.dart';

part 'store_controller.g.dart';

class StoreController = _StoreControllerBase with _$StoreController;

abstract class _StoreControllerBase with Store {
  final _snapLocalController = Modular.get<SnapLocalRepository>();

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
  }
}
