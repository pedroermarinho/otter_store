// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container2_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Container2Controller on _Container2ControllerBase, Store {
  final _$valueAtom = Atom(name: '_Container2ControllerBase.value');

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

  final _$_Container2ControllerBaseActionController =
      ActionController(name: '_Container2ControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_Container2ControllerBaseActionController
        .startAction(name: '_Container2ControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_Container2ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
