// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppInfoController on _AppInfoControllerBase, Store {
  final _$iconUrlAtom = Atom(name: '_AppInfoControllerBase.iconUrl');

  @override
  String get iconUrl {
    _$iconUrlAtom.reportRead();
    return super.iconUrl;
  }

  @override
  set iconUrl(String value) {
    _$iconUrlAtom.reportWrite(value, super.iconUrl, () {
      super.iconUrl = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_AppInfoControllerBase.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$nameAtom = Atom(name: '_AppInfoControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$screenshotUrlsAtom =
      Atom(name: '_AppInfoControllerBase.screenshotUrls');

  @override
  List<String> get screenshotUrls {
    _$screenshotUrlsAtom.reportRead();
    return super.screenshotUrls;
  }

  @override
  set screenshotUrls(List<String> value) {
    _$screenshotUrlsAtom.reportWrite(value, super.screenshotUrls, () {
      super.screenshotUrls = value;
    });
  }

  @override
  String toString() {
    return '''
iconUrl: ${iconUrl},
description: ${description},
name: ${name},
screenshotUrls: ${screenshotUrls}
    ''';
  }
}
