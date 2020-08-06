import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:otter_store/app/components/layout_custom/layout_custom_widget.dart';
import 'package:otter_store/app/components/responsive/responsive_widget.dart';

import 'store_controller.dart';

class StorePage extends StatefulWidget {
  final String title;

  const StorePage({Key key, this.title = "Store"}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends ModularState<StorePage, StoreController> {
  //use 'controller' variable to access controller
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutCustomWidget(

      body: Padding(
          padding: ResponsiveWidget.isPequenoScreen(context)
              ? EdgeInsets.all(10)
              : EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                child:

                    TextField(
                      textAlign: TextAlign.center,
                      onChanged: controller.searchApp,
                      onSubmitted:controller.searchApp,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Observer(
                  builder: (_) => DraggableScrollbar.semicircle(
                    controller: _scrollController,
                    child: GridView.builder(
                      controller: _scrollController,
                      itemCount: controller.apps.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            ResponsiveWidget.isPequenoScreen(context) ? 2 : 4,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return controller.apps[index];
                      },
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
