import 'package:flutter/material.dart';
import 'package:otter_store/app/modules/projetcs/models/readme_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectComponentWidget extends StatelessWidget {
  final ReadmeModel _project;
  final double _bottomPadding;

  ProjectComponentWidget(this._project, this._bottomPadding, {Key key})
      : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void onProjectClick() {
    if (_project.repositoryUrl != null) _launchURL(_project.repositoryUrl);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, _bottomPadding),
      child: InkWell(
        onTap: onProjectClick,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
//              Expanded(
//                  flex: 40,
//                  child: Image.asset(
//                    _project.iconSrc,
//                    width: width * .25,
//                    height: width*.25,
//                  )),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_project.projectName,
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(
                        height: height * .01,
                      ),
//                      Flexible( child:
                      Text(
                        _project.description,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
//                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
