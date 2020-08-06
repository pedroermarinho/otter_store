// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'themes_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemesController on _ThemesControllerBase, Store {
  Computed<ThemeData> _$themeActualComputed;

  @override
  ThemeData get themeActual =>
      (_$themeActualComputed ??= Computed<ThemeData>(() => super.themeActual,
              name: '_ThemesControllerBase.themeActual'))
          .value;

  final _$themeAtom = Atom(name: '_ThemesControllerBase.theme');

  @override
  ThemeOption get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(ThemeOption value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  final _$_ThemesControllerBaseActionController =
      ActionController(name: '_ThemesControllerBase');

  @override
  void setContext(BuildContext context) {
    final _$actionInfo = _$_ThemesControllerBaseActionController.startAction(
        name: '_ThemesControllerBase.setContext');
    try {
      return super.setContext(context);
    } finally {
      _$_ThemesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeTheme() {
    final _$actionInfo = _$_ThemesControllerBaseActionController.startAction(
        name: '_ThemesControllerBase.changeTheme');
    try {
      return super.changeTheme();
    } finally {
      _$_ThemesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
theme: ${theme},
themeActual: ${themeActual}
    ''';
  }
}
