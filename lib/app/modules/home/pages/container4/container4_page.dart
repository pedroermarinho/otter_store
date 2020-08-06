import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';
import 'package:otter_store/app/modules/home/components/item_project/item_project_widget.dart';
import 'package:otter_store/app/modules/home/components/line/line_widget.dart';
import 'package:otter_store/app/modules/home/components/text_icon/text_icon_widget.dart';

import 'container4_controller.dart';

class Container4Page extends StatefulWidget {
  final String title;

  const Container4Page({Key key, this.title = "Container4"}) : super(key: key);

  @override
  _Container4PageState createState() => _Container4PageState();
}

class _Container4PageState
    extends ModularState<Container4Page, Container4Controller> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Container(
        decoration: ResponsiveWidget.isPequenoScreen(context)
            ? null
            : BoxDecoration(
                color: Theme.of(context).backgroundColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6.0,
                  ),
                ],
              ),
        child: Padding(
          padding: ResponsiveWidget.isPequenoScreen(context)
              ? EdgeInsets.all(10)
              : EdgeInsets.all(30),
          child: ResponsiveWidget.listViewOrColumn(
            context,
            children: [
              TextIconWidget(
                text: "Projetos",
                icon: FontAwesomeIcons.github,
                sizeIcon: 40,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 55),
              ItemProjectWidget(
                titulo: "PhotoGIMP Snap",
                githubUrl: "https://github.com/pedroermarinho/photogimp",
                snapUrl: "https://snapcraft.io/photogimp",
                siteUrl: "https://pedroermarinho.github.io/photogimp/",
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: LineWidget(),
              ),
              ItemProjectWidget(
                titulo: "SaudeFX",
                githubUrl: "https://github.com/pedroermarinho/SaudeFX",
                snapUrl: "https://snapcraft.io/SaudeFX",
                siteUrl: "https://pedroermarinho.github.io/SaudeFX",
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: LineWidget(),
              ),
              ItemProjectWidget(
                titulo: "TopCorridaFX",
                githubUrl: "https://github.com/pedroermarinho/TopCorridaFX",
                snapUrl: "https://snapcraft.io/TopCorridaFX",
                siteUrl: "https://pedroermarinho.github.io/TopCorridaFX",
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: LineWidget(),
              ),
              ItemProjectWidget(
                titulo: "VisualG Linux Snap",
                githubUrl: "https://github.com/pedroermarinho/visualg",
                snapUrl: "https://snapcraft.io/visualg",
                siteUrl: "https://pedroermarinho.github.io/visualg",
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: LineWidget(),
              ),
              ItemProjectWidget(
                titulo: "ClinicaFX",
                githubUrl: "https://github.com/pedroermarinho/ClinicaFX",
                snapUrl: "https://snapcraft.io/ClinicaFX",
                siteUrl: "https://pedroermarinho.github.io/ClinicaFX",
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: LineWidget(),
              ),
              ItemProjectWidget(
                titulo: "Markdown Readme Generator",
                githubUrl:
                    "https://github.com/pedroermarinho/markdown-readme-generator",
                siteUrl: "https://pypi.org/project/markdown-readme-generator",
                pypiUrl: "https://pypi.org/project/markdown-readme-generator",
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: LineWidget(),
              ),
              ItemProjectWidget(
                titulo: "Manaus Acessivel",
                githubUrl: "https://github.com/pedroermarinho/manaus_acessivel",
                siteUrl: "https://pedroermarinho.github.io/manaus_acessivel",
              ),
              ResponsiveWidget.isPequenoScreen(context)
                  ? Center(
                      child: FlatButton(
                        onPressed: controller.pushProjetcs,
                        child: Text("Mais Projetos"),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
