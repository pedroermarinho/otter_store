import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';
import 'package:otter_store/app/modules/home/components/line/line_widget.dart';
import 'package:otter_store/app/shared/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'container5_controller.dart';

class Container5Page extends StatefulWidget {
  final String title;

  const Container5Page({Key key, this.title = "Container5"}) : super(key: key);

  @override
  _Container5PageState createState() => _Container5PageState();
}

class _Container5PageState
    extends ModularState<Container5Page, Container5Controller> {
  //use 'controller' variable to access controller

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              IconButton(
                icon: Icon(FontAwesomeIcons.githubSquare),
                onPressed: () => _launchURL(Constants.PROFILE_GITHUB),
                iconSize: 100,
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.twitterSquare),
                onPressed: () => _launchURL(Constants.PROFILE_TWITTER),
                iconSize: 100,
              ),
              ResponsiveWidget.isPequenoScreen(context)
                  ? Container()
                  : LineWidget(color: Colors.transparent)
            ],
          ),
        ),
      ),
    );
  }
}
