import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';
import 'package:otter_store/app/modules/installed/installed_module.dart';
import 'package:otter_store/app/modules/projetcs/projetcs_module.dart';
import 'package:otter_store/app/modules/settings/settings_module.dart';
import 'package:otter_store/app/modules/store/store_module.dart';
import 'package:otter_store/app/pages/about/about_page.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  void initState() {
    super.initState();
//    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
//      grandeScreen: Scaffold(
//        body: Stack(
//          children: [
//            Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                Padding(
//                  padding: EdgeInsets.all(6),
//                  child: Container1Page(),
//                ),
//                SizedBox(
//                  width: 5,
//                ),
//                Expanded(
//                  child: Container(
//                    child: ListView(
//                      // mainAxisAlignment: MainAxisAlignment.start,
//                      children: [
//                        Container2Page(),
//                        Container3Page(),
//                        Container4Page(),
//                        Container5Page(),
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
//            Observer(builder: (_) => controller.projects),
//            Observer(builder: (_) => controller.about),
//            Positioned(
//              top: 20,
//              right: 20,
//              child: SettingsModule(),
//            ),
//          ],
//        ),
//      ),
      pequenoScreen: Scaffold(
        body: PageView(
          controller: controller.pageViewController,
          children: [
            RouterOutlet(module: StoreModule()),
//            RouterOutlet(module: InstalledModule()),
//            RouterOutlet(module: SettingsModule()),
//            RouterOutlet(module: ProjetcsModule()),
            AboutPage(),
          ],
        ),
        bottomNavigationBar: AnimatedBuilder(
            animation: controller.pageViewController,
            builder: (context, snapshot) {
              return BottomNavigationBar(
                backgroundColor: Colors.black87,
                currentIndex: controller.pageViewController?.page?.round() ?? 0,
                onTap: (index) {
                  controller.pageViewController.jumpToPage(index);
                },
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.black87,
                    icon: Icon(
                      Icons.store,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "Store",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
//                  BottomNavigationBarItem(
//                    backgroundColor: Colors.black87,
//                    icon: Icon(
//                      Icons.get_app,
//                      color: Colors.teal,
//                    ),
//                    title: Text(
//                      "Installed",
//                      style: TextStyle(color: Colors.white),
//                    ),
//                  ),
//                  BottomNavigationBarItem(
//                    backgroundColor: Colors.black87,
//                    icon: Icon(
//                      Icons.settings,
//                      color: Colors.teal,
//                    ),
//                    title: Text(
//                      "Settings",
//                      style: TextStyle(color: Colors.white),
//                    ),
//                  ),
//                  BottomNavigationBarItem(
//                    backgroundColor: Colors.black87,
//                    icon: Icon(
//                      FontAwesomeIcons.github,
//                      color: Colors.teal,
//                    ),
//                    title: Text(
//                      "Projects",
//                      style: TextStyle(color: Colors.white),
//                    ),
//                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.black87,
                    icon: Icon(
                      FontAwesomeIcons.info,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            }),
      ),
    );

// ListView(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(6),
//               child: Container1Page(),
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Container2Page(),
//             Container3Page(),
//             Container4Page(),
//             Container5Page(),
//           ],
//         ),
    // Scaffold(
    //   body:
    //   bottomNavigationBar: BottomNavigationBar(

    //     items: [
    //       BottomNavigationBarItem(
    //         backgroundColor: Colors.black87,
    //         icon: Icon(Icons.home),
    //         title: Text("Home"),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         title: Text("Home"),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         title: Text("Home"),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         title: Text("Home"),
    //       ),
    //     ],
    //   ),
    // );
  }
}
