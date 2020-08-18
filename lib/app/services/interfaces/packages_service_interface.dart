abstract class IPackagesService {
  Future recoveryAppsInstalled();
  bool isSupport();
  List getAppList();
  bool isInstalled(String nameApp);
}
