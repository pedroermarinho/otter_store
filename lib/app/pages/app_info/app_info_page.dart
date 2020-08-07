import 'package:carousel_slider/carousel_slider.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/components/layout_custom/layout_custom_widget.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';
import 'package:otter_store/app/shared/config/assets.dart';
import 'package:otter_store/app/shared/utils/packages.dart';

import 'app_info_controller.dart';

class AppInfoPage extends StatefulWidget {
  final String title;
  final String id;
  final TypePackages typePackages;

  const AppInfoPage({
    Key key,
    this.title = "AppInfo",
    @required this.id,
    @required this.typePackages,
  }) : super(key: key);

  @override
  _AppInfoPageState createState() => _AppInfoPageState();
}

class _AppInfoPageState extends ModularState<AppInfoPage, AppInfoController> {
  //use 'controller' variable to access controller
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    controller.setApp(widget.id, widget.typePackages);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutCustomWidget(
      appBar: AppBar(),
      body: DraggableScrollbar.semicircle(
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: ResponsiveWidget.isPequenoScreen(context)
                    ? null
                    : BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                child: Row(
                  children: [
                    Observer(
                      builder: (_) => controller.iconUrl == null
                          ? Image.asset(
                              Assets.icon,
                              height: 100,
                              width: 100,
                            )
                          : ExtendedImage.network(
                              controller.iconUrl,
                              height: 100,
                              width: 100,
                              cache: true,
                              loadStateChanged: (ExtendedImageState state) {
                                switch (state.extendedImageLoadState) {
                                  case LoadState.completed:
                                    return ExtendedRawImage(
                                      image: state.extendedImageInfo?.image,
                                    );
                                    break;
                                  default:
                                    return Image.asset(Assets.icon);
                                    break;
                                }
                              },
                            ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Observer(
                      builder: (_) => Text(
                        controller.name ?? "",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Observer(
              builder: (_) => controller.screenshotUrls == null ||
                      controller.screenshotUrls.length == 0
                  ? Container()
                  : CarouselSlider.builder(
                      itemCount: controller.screenshotUrls.length,
                      options: CarouselOptions(
                        autoPlay: false,
                        enlargeCenterPage: true,
                        viewportFraction: 0.9,
                        aspectRatio: 2.0,
                        initialPage: 2,
                      ),
                      itemBuilder: (BuildContext context, int itemIndex) =>
                          ExtendedImage.network(
                        controller.screenshotUrls[itemIndex],
                        cache: true,
                        loadStateChanged: (ExtendedImageState state) {
                          switch (state.extendedImageLoadState) {
                            case LoadState.completed:
                              return ExtendedRawImage(
                                image: state.extendedImageInfo?.image,
                              );
                              break;
                            default:
                              return Image.asset(Assets.icon);
                              break;
                          }
                        },
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: ResponsiveWidget.isPequenoScreen(context)
                    ? null
                    : BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1.0,
                          ),
                        ],
                      ),
                child: Observer(
                  builder: (_) => Text(
                    controller.description ?? "",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
