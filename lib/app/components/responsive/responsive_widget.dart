import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget pequenoScreen;
  final Widget medioScreen;
  final Widget grandeScreen;

  static bool isPequenoScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 765;
  }

  static bool isMedioScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.width >= 765;
  }

  static bool isGrandeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1000 || isMedioScreen(context);
  }

  static Widget listViewOrColumn(
    BuildContext context, {
    @required List<Widget> children,
  }) {
    return isPequenoScreen(context)
        ? ListView(
            children: children,
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          );
  }

  const ResponsiveWidget({
    Key key,
    this.pequenoScreen,
    this.medioScreen,
    this.grandeScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return grandeScreen ?? medioScreen ?? pequenoScreen;
        } else if (constraints.maxWidth < 1000 && constraints.maxWidth >= 765) {
          return medioScreen ?? grandeScreen ?? pequenoScreen;
        } else {
          return pequenoScreen ?? medioScreen ?? grandeScreen;
        }
      },
    );
  }
}
