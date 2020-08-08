// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool> _$isConfigComputed;

  @override
  bool get isConfig =>
      (_$isConfigComputed ??= Computed<bool>(() => super.isConfig,
              name: '_HomeControllerBase.isConfig'))
          .value;

  final _$configAtom = Atom(name: '_HomeControllerBase.config');

  @override
  Widget get config {
    _$configAtom.reportRead();
    return super.config;
  }

  @override
  set config(Widget value) {
    _$configAtom.reportWrite(value, super.config, () {
      super.config = value;
    });
  }

  final _$aboutAtom = Atom(name: '_HomeControllerBase.about');

  @override
  Widget get about {
    _$aboutAtom.reportRead();
    return super.about;
  }

  @override
  set about(Widget value) {
    _$aboutAtom.reportWrite(value, super.about, () {
      super.about = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  bool changeConfig() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeConfig');
    try {
      return super.changeConfig();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void openAbout() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.openAbout');
    try {
      return super.openAbout();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void closeAbout() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.closeAbout');
    try {
      return super.closeAbout();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
config: ${config},
about: ${about},
isConfig: ${isConfig}
    ''';
  }
}
