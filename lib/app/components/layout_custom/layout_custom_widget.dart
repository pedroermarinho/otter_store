import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';

class LayoutCustomWidget extends StatelessWidget {
  final AppBar appBar;
  final Widget body;

  const LayoutCustomWidget({Key key, this.appBar, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
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
          child: body,
        ),
      ),
    );
  }
}
