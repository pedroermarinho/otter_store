import 'package:otter_store/app/shared/config/assets.dart';

enum TypePackages { snap, flatpak, appImage }

String getTypePackagesIcon(TypePackages typePackages) {
  switch (typePackages) {
    case TypePackages.snap:
      return Assets.snap_icon;
      break;
    case TypePackages.flatpak:
      return Assets.flatpak_icon;
      break;
    case TypePackages.appImage:
      return Assets.appimage_icon;
      break;
    default:
      return Assets.icon;
      break;
  }
}
