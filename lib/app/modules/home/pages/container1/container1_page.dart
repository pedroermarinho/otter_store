import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';
import 'package:otter_store/app/modules/home/components/line/line_widget.dart';
import 'package:otter_store/app/modules/home/components/link/link_widget.dart';
import 'package:otter_store/app/modules/home/components/skills/skills_widget.dart';
import 'package:otter_store/app/modules/home/components/text_icon/text_icon_widget.dart';
import 'package:otter_store/app/shared/config/assets.dart';
import 'package:otter_store/app/shared/config/constants.dart';

import 'container1_controller.dart';

class Container1Page extends StatefulWidget {
  final String title;

  const Container1Page({Key key, this.title = "Container1"}) : super(key: key);

  @override
  _Container1PageState createState() => _Container1PageState();
}

class _Container1PageState
    extends ModularState<Container1Page, Container1Controller> {
  //use 'controller' variable to access controller

  Widget containerCostum(BuildContext context, {Widget child}) {
    return ResponsiveWidget(
        grandeScreen: Container(
          constraints: BoxConstraints(
            maxWidth: 300,
            minWidth: 200,
//         maxHeight:width>750?height:330,
            minHeight: 200,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 6.0,
              ),
            ],
          ),
          child: child,
        ),
        pequenoScreen: child);
  }

  @override
  Widget build(BuildContext context) {
    return containerCostum(
      context,
      child: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
//                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                image: AssetImage(Assets.icon)
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveWidget.isPequenoScreen(context)
                    ? Observer(
                        builder: (_) => IconButton(
                          icon: Icon(
                            controller.isThemeDark
                                ? FontAwesomeIcons.solidSun
                                : FontAwesomeIcons.solidMoon,
                            color: Colors.white,
                          ),
                          onPressed: controller.changeTheme,
                        ),
                      )
                    : Container(),
                Expanded(child: Container()),
                Container(
                  child: Text(
                    Constants.APP_NAME,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.5)),
                  padding: EdgeInsets.all(4),
                ),
                LineWidget(color: Colors.transparent)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 15,
              bottom: 20,
            ),
            child: Column(
              children: [
                TextIconWidget(
                  text: "Desenvolvedor",
                  icon: Icons.business_center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 15,
                ),
                TextIconWidget(
                  text: "Manauas-AM",
                  icon: Icons.home,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 15,
                ),
                TextIconWidget(
                  text: "pedro.marinho238@gmail.com",
                  icon: Icons.email,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 15,
                ),
                TextIconWidget(
                  text: "+55 97 991389183",
                  icon: Icons.phone,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          LineWidget(),
          Container(
//                  color: Colors.amber,
            padding: EdgeInsets.only(
              left: 15,
              top: 15,
              bottom: 20,
            ),
            child: Column(
              children: [
                TextIconWidget(
                  text: "Habilidades",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      SkillsWidget(text: "Básico", nivel: 1),
                      SkillsWidget(text: "Intermediário", nivel: 2),
                      SkillsWidget(text: "Avançado", nivel: 3),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    SkillsWidget(text: "Java", nivel: 2),
                    SkillsWidget(text: "JavaFX", nivel: 2),
                    SkillsWidget(text: "Python", nivel: 2),
                    SkillsWidget(text: "C/C++", nivel: 1),
                    SkillsWidget(text: "Mysql", nivel: 1),
                    SkillsWidget(text: "Linux", nivel: 2),
                    SkillsWidget(text: "Rust", nivel: 1),
                    SkillsWidget(text: "Flutter", nivel: 2),
                    SkillsWidget(text: "Bash", nivel: 1),
                    SkillsWidget(text: "Git/Github", nivel: 2),
                    SkillsWidget(text: "PHP", nivel: 1),
                    SkillsWidget(text: "HTML", nivel: 1),
                    SkillsWidget(text: "Javascript", nivel: 1),
                    SkillsWidget(text: "Windows", nivel: 2),
                  ],
                ),
              ],
            ),
          ),
          LineWidget(),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 15,
              bottom: 20,
            ),
            child: Column(
              children: [
                TextIconWidget(
                  text: "Línguas",
                  icon: Icons.language,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      SkillsWidget(text: "Básico", nivel: 1),
                      SkillsWidget(text: "Intermediário", nivel: 2),
                      SkillsWidget(text: "Avançado", nivel: 3),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    SkillsWidget(text: "Português", nivel: 3),
                    SkillsWidget(text: "Espanhol", nivel: 1),
                    SkillsWidget(text: "Inglês", nivel: 1),
                  ],
                )
              ],
            ),
          ),
          LineWidget(),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 15,
              bottom: 20,
            ),
            child: Column(
              children: [
                TextIconWidget(
                  text: "Links Relacionados",
                  icon: Icons.link,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 15,
                ),
                LinkWidget(
                  url:
                      "https://www.diolinux.com.br/2019/09/photogimp-snapcraft-snap-ubuntu-gimp-photoshop-editor-imagem-linux.html",
                  text: "PhotoGIMP agora está disponível em Snap",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
