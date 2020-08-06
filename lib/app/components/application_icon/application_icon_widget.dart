import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:otter_store/app/pages/app_info/app_info_page.dart';
import 'package:otter_store/app/shared/config/assets.dart';
import 'package:otter_store/app/shared/utils/packages.dart';

class ApplicationIconWidget extends StatelessWidget {
//  final _controller = ApplicationIconController();
  final String name;
  final String urlImg;
  final String id;
  final TypePackages typePackages;

  ApplicationIconWidget({
    Key key,
    this.name,
    this.urlImg,
    @required this.id,
    @required this.typePackages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => AppInfoPage(
                id: id,
                typePackages: typePackages,
              ),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Expanded(
                child: ExtendedImage.network(
                  urlImg,
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
              Text(
                name ?? "Nome não encontrado",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
