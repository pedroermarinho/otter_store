import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'installed_controller.dart';

class InstalledPage extends StatefulWidget {
  final String title;
  const InstalledPage({Key key, this.title = "Installed"}) : super(key: key);

  @override
  _InstalledPageState createState() => _InstalledPageState();
}

class _InstalledPageState
    extends ModularState<InstalledPage, InstalledController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
