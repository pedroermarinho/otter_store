import 'package:carousel_slider/carousel_slider.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
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
    return Padding(
      padding: ResponsiveWidget.isPequenoScreen(context)
          ? EdgeInsets.only(
              top: 35,
              bottom: 10,
              right: 10,
              left: 10,
            )
          : EdgeInsets.all(35),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image.asset(
                    getTypePackagesIcon(widget.typePackages),
                    width: ResponsiveWidget.isPequenoScreen(context) ? 35 : 50,
//                    height: 50,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: controller.closeInfo,
                ),
              ],
            ),
            Expanded(
                child: Observer(
              builder: (_) => widget.typePackages == TypePackages.flatpak &&
                      controller.flatpakDetailsModel == null
                  ? Center(child: CircularProgressIndicator())
                  : DraggableScrollbar.semicircle(
                      controller: _scrollController,
                      child: ListView(
                        controller: _scrollController,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: ResponsiveWidget.isPequenoScreen(
                                      context)
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
                                            loadStateChanged:
                                                (ExtendedImageState state) {
                                              switch (state
                                                  .extendedImageLoadState) {
                                                case LoadState.completed:
                                                  return ExtendedRawImage(
                                                    image: state
                                                        .extendedImageInfo
                                                        ?.image,
                                                  );
                                                  break;
                                                default:
                                                  return Image.asset(
                                                      Assets.icon);
                                                  break;
                                              }
                                            },
                                          ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Observer(
                                    builder: (_) => Flexible(
                                      child: Text(
                                        controller.name ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                      ),
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
                                    itemBuilder:
                                        (BuildContext context, int itemIndex) =>
                                            ExtendedImage.network(
                                      controller.screenshotUrls[itemIndex],
                                      cache: true,
                                      loadStateChanged:
                                          (ExtendedImageState state) {
                                        switch (
                                              state.extendedImageLoadState) {
                                            case LoadState.completed:
                                              return ExtendedRawImage(
                                                image: state
                                                    .extendedImageInfo?.image,
                                              );
                                              break;
                                            case LoadState.loading:
                                              return Image.asset(Assets.icon);
                                              break;
                                            case LoadState.failed:
                                              return Image.asset(Assets.icon);
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
                                decoration: ResponsiveWidget.isPequenoScreen(
                                        context)
                                    ? null
                                    : BoxDecoration(
                                        color:
                                            Theme.of(context).backgroundColor,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 1.0,
                                          ),
                                        ],
                                      ),
                                child: Observer(

                                  builder: (_) => HtmlWidget(
                                    controller.description,
                                    onTapUrl: (url) => showDialog(
                                      context: context,
                                      builder: (_) => Text(
                                        url ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                    textStyle:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: ResponsiveWidget.isPequenoScreen(
                                        context)
                                    ? null
                                    : BoxDecoration(
                                        color:
                                            Theme.of(context).backgroundColor,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 1.0,
                                          ),
                                        ],
                                      ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Observer(
                                      builder: (_) => controller.categories ==
                                              null
                                          ? Container()
                                          : Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                "Categoria: ${controller.categories}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ),
                                    ),
                                    Observer(
                                      builder: (_) => controller.version == null
                                          ? Container()
                                          : Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                "Versão: ${controller.version}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ),
                                    ),
                                    Observer(
                                      builder: (_) =>
                                          controller.developerName == null
                                              ? Container()
                                              : Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(
                                                    "Autor: ${controller.developerName}",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                    ),
                                    Observer(
                                      builder: (_) => controller.font == null
                                          ? Container()
                                          : Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                "Fonte: ${controller.font}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ),
                                    ),
                                    Observer(
                                      builder: (_) =>
                                          controller.projectLicense == null
                                              ? Container()
                                              : Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(
                                                    "Licença: ${controller.projectLicense}",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                    ),
                                    Observer(
                                      builder: (_) => controller.homepageUrl ==
                                              null
                                          ? Container()
                                          : Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 0),
                                              child: Text(
                                                "Site: ${controller.homepageUrl}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
