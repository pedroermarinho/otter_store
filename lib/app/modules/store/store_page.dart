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
    return Scaffold(
      body: Stack(
        children: [
          LayoutCustomWidget(
            body: Padding(
              padding: ResponsiveWidget.isPequenoScreen(context)
                  ? EdgeInsets.only(left: 10, right: 10, bottom: 10)
                  : EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: Column(
                children: [
                  Observer(
                    builder: (_) => Center(
                      child: IconButton(
                        icon: Icon(controller.isConfig
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up),
                        onPressed: controller.changeConfig,
                      ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 500),
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: controller.searchApp,
                      onSubmitted: controller.searchApp,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Observer(
                    builder: (_) => Text(
                      "${controller.apps.length}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  /// construção das amostras do aplicativos na tela
                  Expanded(
                    child: Observer(
                      builder: (_) => DraggableScrollbar.semicircle(
                        controller: _scrollController,
                        child: GridView.builder(
                          controller: _scrollController,
                          itemCount: controller.apps.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:

                                /// se a tela for pequena mostra 2 colunas
                                /// se a tela for grande mostra 4 colunas
                                ResponsiveWidget.isPequenoScreen(context)
                                    ? 2
                                    : 4,
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
          ),

          /// mostra tela de informações
          Observer(builder: (_) => controller.info ?? controller.container),
        ],
      ),
    );
  }
}
