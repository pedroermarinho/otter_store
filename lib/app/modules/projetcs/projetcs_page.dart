import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';

import 'projetcs_controller.dart';

class ProjetcsPage extends StatefulWidget {
  final String title;

  const ProjetcsPage({Key key, this.title = "Projetcs"}) : super(key: key);

  @override
  _ProjetcsPageState createState() => _ProjetcsPageState();
}

class _ProjetcsPageState
    extends ModularState<ProjetcsPage, ProjetcsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      grandeScreen: Padding(
        padding: EdgeInsets.all(70),
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
                    onPressed: controller.closeProjectsHome,
                  ),
                ],
              ),
              Observer(
                builder: (_) {
                  return Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom: 15, top: 6),
                      itemCount: controller.listProjects.length,
                      itemBuilder: (_, index) {
                        return controller.listProjects[index];
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      pequenoScreen: Scaffold(
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: controller.closeProjects,
                  ),
                ],
              ),
              Observer(
                builder: (_) {
                  return Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom: 15, top: 6),
                      itemCount: controller.listProjects.length,
                      itemBuilder: (_, index) {
                        return controller.listProjects[index];
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
