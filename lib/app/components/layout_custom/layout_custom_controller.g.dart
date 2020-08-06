// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_custom_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LayoutCustomController on _LayoutCustomControllerBase, Store {
  final _$valueAtom = Atom(name: '_LayoutCustomControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_LayoutCustomControllerBaseActionController =
      ActionController(name: '_LayoutCustomControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_LayoutCustomControllerBaseActionController
        .startAction(name: '_LayoutCustomControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_LayoutCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
