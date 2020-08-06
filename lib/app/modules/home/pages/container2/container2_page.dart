import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';
import 'package:otter_store/app/modules/home/components/item_information/item_information_widget.dart';
import 'package:otter_store/app/modules/home/components/line/line_widget.dart';
import 'package:otter_store/app/modules/home/components/text_icon/text_icon_widget.dart';

import 'container2_controller.dart';

class Container2Page extends StatefulWidget {
  final String title;

  const Container2Page({Key key, this.title = "Container2"}) : super(key: key);

  @override
  _Container2PageState createState() => _Container2PageState();
}

class _Container2PageState
    extends ModularState<Container2Page, Container2Controller> {
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
                text: "Experiência de Trabalho",
                icon: Icons.business,
                sizeIcon: 40,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 55),
              ItemInformationWidget(
                titulo: "Sem Experiência Profissional",
                inicio: "Jan 2019",
                descricao:
                    "Objetivo: Primeiro emprego como programador ou outro do ramo da T.I",
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
