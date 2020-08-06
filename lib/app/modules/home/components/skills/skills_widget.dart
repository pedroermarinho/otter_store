import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final int nivel;

  const SkillsWidget({
    Key key,
    @required this.text,
    this.style,
    this.nivel = 1,
  }) : super(key: key);

  Color get _color {
    switch (nivel) {
      case 1:
        return Colors.greenAccent;
      case 2:
        return Colors.lightGreen;
      default:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 30, maxWidth: 200),
      child: Text(
        "$text",
        style: style ?? Theme.of(context).textTheme.bodyText2,
      ),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 10, right: 10),
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
