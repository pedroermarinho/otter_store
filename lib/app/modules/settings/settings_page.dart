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
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(
            builder: (_) => IconButton(
              icon: Icon(
                controller.isThemeDark
                    ? FontAwesomeIcons.solidSun
                    : FontAwesomeIcons.solidMoon,
                color: Theme.of(context).accentColor,
              ),
              onPressed: controller.changeTheme,
            ),
          ),
//          IconButton(
//            icon: Icon(
//              FontAwesomeIcons.github,
//              color: Colors.white,
//            ),
//            onPressed: controller.openProjects,
//          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.infoCircle,
              color: Theme
                  .of(context)
                  .accentColor,
            ),
            onPressed: controller.openAbout,
          ),
        ],
      ),
    );
  }
}
