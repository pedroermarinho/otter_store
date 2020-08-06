// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container1_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Container1Controller on _Container1ControllerBase, Store {
  Computed<bool> _$isThemeDarkComputed;

  @override
  bool get isThemeDark =>
      (_$isThemeDarkComputed ??= Computed<bool>(() => super.isThemeDark,
              name: '_Container1ControllerBase.isThemeDark'))
          .value;

  final _$_Container1ControllerBaseActionController =
      ActionController(name: '_Container1ControllerBase');

  @override
  void changeTheme() {
    final _$actionInfo = _$_Container1ControllerBaseActionController
        .startAction(name: '_Container1ControllerBase.changeTheme');
    try {
      return super.changeTheme();
    } finally {
      _$_Container1ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isThemeDark: ${isThemeDark}
    ''';
  }
}
