import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemProjectWidget extends StatelessWidget {
  final String titulo;
  final String snapUrl;
  final String pypiUrl;
  final String githubUrl;
  final String siteUrl;
  final String descricao;

  const ItemProjectWidget(
      {Key key,
      this.titulo,
      this.descricao,
      this.snapUrl,
      this.pypiUrl,
      this.githubUrl,
      this.siteUrl})
      : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget url(String title, IconData icon, String url) {
    return Container(
      constraints: BoxConstraints(maxWidth: 130),
      child: FlatButton(
        onPressed: () => _launchURL(url),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 10,
            ),
            Text("$title"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => siteUrl == null ? null : _launchURL(siteUrl),
            child: Text(
              titulo ?? "",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Wrap(
            direction: Axis.horizontal,
            children: [
              descricao == null
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(descricao),
                    ),
              snapUrl == null
                  ? Container()
                  : url("Snap", FontAwesomeIcons.linux, snapUrl),
              githubUrl == null
                  ? Container()
                  : url("GitHub", FontAwesomeIcons.github, githubUrl),
              pypiUrl == null
                  ? Container()
                  : url("PyPi", FontAwesomeIcons.python, pypiUrl),
            ],
          ),
        ],
      ),
    );
  }
}
