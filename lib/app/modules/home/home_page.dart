import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';
import 'package:otter_store/app/modules/store/store_module.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResponsiveWidget(
          pequenoScreen: Stack(
            children: [
              Column(
                children: [
                  Observer(
                      builder: (_) =>
                          controller.config ?? controller.container),
                  Expanded(
                    child: StoreModule(),
                  ),
                ],
              ),
              Observer(builder: (_) => controller.about),
            ],
          ),
        ),
      ),
    );
  }
}
