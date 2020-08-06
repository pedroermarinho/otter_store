import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';
import 'package:otter_store/app/modules/home/components/item_information/item_information_widget.dart';
import 'package:otter_store/app/modules/home/components/line/line_widget.dart';
import 'package:otter_store/app/modules/home/components/text_icon/text_icon_widget.dart';

import 'container3_controller.dart';

class Container3Page extends StatefulWidget {
  final String title;

  const Container3Page({Key key, this.title = "Container3"}) : super(key: key);

  @override
  _Container3PageState createState() => _Container3PageState();
}

class _Container3PageState
    extends ModularState<Container3Page, Container3Controller> {
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
                text: "Educação",
                icon: Icons.school,
                sizeIcon: 40,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 55),
              ItemInformationWidget(
                titulo: "Técnico nível médio em Informática – IFAM",
                inicio: "2016",
                fim: "2018",
                descricao: "Técnico",
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: LineWidget(),
              ),
              ItemInformationWidget(
                titulo: "Sistemas de Informação – Fametro",
                inicio: "2019",
                fim: "2022",
                descricao: "Bacharelado",
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: LineWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
