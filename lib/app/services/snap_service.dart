import 'dart:async';
import 'dart:convert';

import 'package:otter_store/app/models/snap_installed_model.dart';

import 'interfaces/packages_service_interface.dart';
import 'package:process_run/shell_run.dart';
import 'package:process_run/which.dart';

class SnapService implements IPackagesService {
  final List<SnapInstalledModel> _appList = [];

  void _formatText(String text) {
    List snap =
        text.trim().split(' ').where((element) => element != '').toList();
    if (snap
            .toString()
            .compareTo('[Name, Version, Rev, Tracking, Publisher, Notes]') ==
        1) {
      /*
        'name': snap[0],
        'version': snap[1],
        'rev': snap[2],
        'tracking': snap[3],
        'publisher': snap[4],
        'notes': snap[5]
           */
      _appList.add(SnapInstalledModel(
        name: snap[0],
        version: snap[1],
        rev: snap[2],
        tracking: snap[3],
        publisher: snap[4],
        notes: snap[5],
      ));
    }
  }

  @override
  List<SnapInstalledModel> getAppList() => _appList;

  @override
  bool isInstalled(String nameApp) => _appList
      .firstWhere((element) => element.name == nameApp, orElse: () => null)!=null;

  @override
  bool isSupport() => whichSync('snap') != null;

  @override
  Future recoveryAppsInstalled() async {
    if (isSupport()) {
      final _stdoutCtlr = StreamController<List<int>>();
      final shell = Shell(stdout: _stdoutCtlr.sink);

      utf8.decoder
          .bind(_stdoutCtlr.stream)
          .transform(const LineSplitter())
          .listen(_formatText);

      await shell.run('snap list');
      await _stdoutCtlr.close();
    }
  }
}
