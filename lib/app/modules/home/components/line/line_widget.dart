import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  final Color color;
  final EdgeInsetsGeometry padding;
  final double height;
  final double width;

  const LineWidget(
      {Key key,
      this.color = Colors.grey,
      this.padding,
      this.height = 1,
      this.width = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: height,
        width: width,
        color: color,
      ),
    );
  }
}
