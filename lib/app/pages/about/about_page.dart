import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';
import 'package:otter_store/app/shared/config/assets.dart';

import 'about_controller.dart';

class AboutPage extends StatefulWidget {
  final String title;

  const AboutPage({Key key, this.title = "About"}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends ModularState<AboutPage, AboutController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.all(ResponsiveWidget.isPequenoScreen(context) ? 20 : 70),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: controller.closeAbout,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 20),
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      Assets.icon,
                      height: 300,
                    ),
                  ),
//                Center(
//                  child: Observer(
//                    builder: (_) => Text(
//                      controller.appName,
//                      style: Theme.of(context).textTheme.headline1,
//                    ),
//                  ),
//                ),
//                SizedBox(
//                  height: 10,
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Observer(
//                      builder: (_) => Text(
//                        "${controller.version}",
//                        style: Theme.of(context).textTheme.headline2,
//                      ),
//                    ),
//                    Observer(
//                      builder: (_) => Text(
//                        " + ${controller.buildNumber}",
//                        style: Theme.of(context).textTheme.headline2,
//                      ),
//                    ),
//                  ],
//                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
