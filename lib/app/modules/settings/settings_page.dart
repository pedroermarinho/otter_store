import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'settings_controller.dart';

class SettingsPage extends StatefulWidget {
  final String title;

  const SettingsPage({Key key, this.title = "Settings"}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState
    extends ModularState<SettingsPage, SettingsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(
            builder: (_) => IconButton(
              icon: Icon(
                controller.isThemeDark
                    ? FontAwesomeIcons.solidSun
                    : FontAwesomeIcons.solidMoon,
                color: Colors.white,
              ),
              onPressed: controller.changeTheme,
            ),
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.github,
              color: Colors.white,
            ),
            onPressed: controller.openProjects,
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.infoCircle,
              color: Colors.white,
            ),
            onPressed: controller.openAbout,
          ),
        ],
      ),
    );
  }
}
