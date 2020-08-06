import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkWidget extends StatelessWidget {
  final String text;
  final String url;
  final TextStyle style;

  const LinkWidget({Key key, this.text, @required this.url, this.style})
      : super(key: key);

  _launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: _launchURL,
      child: Row(
        children: [
          Icon(
            Icons.link,
            color: Colors.grey,
            size: 15,
          ),
          Flexible(
            child: Text(
              text ?? url,
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
