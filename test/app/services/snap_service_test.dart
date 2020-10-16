import 'package:flutter_test/flutter_test.dart';

import 'package:otter_store/app/services/interfaces/packages_service_interface.dart';
import 'package:otter_store/app/services/snap_service.dart';

void main() {
  IPackagesService service;

  setUp(() async {
    service = SnapService();
    await service.recoveryAppsInstalled();
  });
  group('SnapService Test', () {
    test("Instance", () {
      expect(service, isInstanceOf<SnapService>());
    });
    test("Support snap", () {
      expect(true, service.isSupport());
    });
    test("getAppList", () {
      expect(true, service.getAppList().length > 0);
    });
    test("isInstalled", () {
      expect(true, service.isInstalled("otter-store"));
      expect(false, service.isInstalled("sdfsdfsd"));
    });
  });
}
