// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projetcs_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProjetcsController on _ProjetcsControllerBase, Store {
  final _$listProjectsAtom = Atom(name: '_ProjetcsControllerBase.listProjects');

  @override
  ObservableList<Widget> get listProjects {
    _$listProjectsAtom.reportRead();
    return super.listProjects;
  }

  @override
  set listProjects(ObservableList<Widget> value) {
    _$listProjectsAtom.reportWrite(value, super.listProjects, () {
      super.listProjects = value;
    });
  }

  final _$_ProjetcsControllerBaseActionController =
      ActionController(name: '_ProjetcsControllerBase');

  @override
  void closeProjectsHome() {
    final _$actionInfo = _$_ProjetcsControllerBaseActionController.startAction(
        name: '_ProjetcsControllerBase.closeProjectsHome');
    try {
      return super.closeProjectsHome();
    } finally {
      _$_ProjetcsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void closeProjects() {
    final _$actionInfo = _$_ProjetcsControllerBaseActionController.startAction(
        name: '_ProjetcsControllerBase.closeProjects');
    try {
      return super.closeProjects();
    } finally {
      _$_ProjetcsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listProjects: ${listProjects}
    ''';
  }
}
