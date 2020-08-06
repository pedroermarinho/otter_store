import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/shared/config/assets.dart';

import 'splash_screen_controller.dart';

class SplashScreenPage extends StatefulWidget {
  final String title;

  const SplashScreenPage({Key key, this.title = "SplashScreen"})
      : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState
    extends ModularState<SplashScreenPage, SplashScreenController> {
  //use 'controller' variable to access controller
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), controller.recovery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => controller.load
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text("Carregando Aplicativos")
                  ],
                ),
              )
            : Center(
                child: Image.asset(Assets.icon),
              ),
      ),
    );
  }
}
