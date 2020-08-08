// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoreController on _StoreControllerBase, Store {
  Computed<bool> _$isConfigComputed;

  @override
  bool get isConfig =>
      (_$isConfigComputed ??= Computed<bool>(() => super.isConfig,
              name: '_StoreControllerBase.isConfig'))
          .value;

  final _$infoAtom = Atom(name: '_StoreControllerBase.info');

  @override
  Widget get info {
    _$infoAtom.reportRead();
    return super.info;
  }

  @override
  set info(Widget value) {
    _$infoAtom.reportWrite(value, super.info, () {
      super.info = value;
    });
  }

  final _$searchTextAtom = Atom(name: '_StoreControllerBase.searchText');

  @override
  String get searchText {
    _$searchTextAtom.reportRead();
    return super.searchText;
  }

  @override
  set searchText(String value) {
    _$searchTextAtom.reportWrite(value, super.searchText, () {
      super.searchText = value;
    });
  }

  final _$appsAtom = Atom(name: '_StoreControllerBase.apps');

  @override
  ObservableList<ApplicationIconWidget> get apps {
    _$appsAtom.reportRead();
    return super.apps;
  }

  @override
  set apps(ObservableList<ApplicationIconWidget> value) {
    _$appsAtom.reportWrite(value, super.apps, () {
      super.apps = value;
    });
  }

  final _$_StoreControllerBaseActionController =
  ActionController(name: '_StoreControllerBase');

  @override
  void openInfo({@required String id, @required TypePackages typePackages}) {
    final _$actionInfo = _$_StoreControllerBaseActionController.startAction(
        name: '_StoreControllerBase.openInfo');
    try {
      return super.openInfo(id: id, typePackages: typePackages);
    } finally {
      _$_StoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void closeInfo() {
    final _$actionInfo = _$_StoreControllerBaseActionController.startAction(
        name: '_StoreControllerBase.closeInfo');
    try {
      return super.closeInfo();
    } finally {
      _$_StoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSearchText(String value) {
    final _$actionInfo = _$_StoreControllerBaseActionController.startAction(
        name: '_StoreControllerBase.setSearchText');
    try {
      return super.setSearchText(value);
    } finally {
      _$_StoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic searchApp(dynamic text) {
    final _$actionInfo = _$_StoreControllerBaseActionController.startAction(
        name: '_StoreControllerBase.searchApp');
    try {
      return super.searchApp(text);
    } finally {
      _$_StoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
info: ${info},
searchText: ${searchText},
apps: ${apps},
isConfig: ${isConfig}
    ''';
  }
}
