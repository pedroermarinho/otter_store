import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:otter_store/app/shared/config/assets.dart';
import 'package:otter_store/app/shared/utils/packages.dart';

class ApplicationIconWidget extends StatelessWidget {

  final String name;
  final String urlImg;
  final String id;
  final TypePackages typePackages;
  final Function onTap;

  ApplicationIconWidget({
    Key key,
    this.name,
    this.urlImg,
    @required this.id,
    @required this.typePackages,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: GestureDetector(
        onTap: onTap,
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
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: urlImg == null
                          ? Image.asset(Assets.icon)
                          : ExtendedImage.network(
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
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                Positioned(
                    child: FractionallySizedBox(
                      heightFactor: 0.25,
                      child: Image.asset(
                        getTypePackagesIcon(typePackages),
//                    height: 50,
                      ),
                    )
                ),
              ],
          )
        ),
      ),
    );
  }
}
