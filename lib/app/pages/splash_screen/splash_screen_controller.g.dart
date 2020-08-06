// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashScreenController on _SplashScreenControllerBase, Store {
  final _$loadAtom = Atom(name: '_SplashScreenControllerBase.load');

  @override
  bool get load {
    _$loadAtom.reportRead();
    return super.load;
  }

  @override
  set load(bool value) {
    _$loadAtom.reportWrite(value, super.load, () {
      super.load = value;
    });
  }

  final _$recoveryAsyncAction =
      AsyncAction('_SplashScreenControllerBase.recovery');

  @override
  Future recovery() {
    return _$recoveryAsyncAction.run(() => super.recovery());
  }

  @override
  String toString() {
    return '''
load: ${load}
    ''';
  }
}
