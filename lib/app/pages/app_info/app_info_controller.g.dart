// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppInfoController on _AppInfoControllerBase, Store {
  final _$flatpakDetailsModelAtom =
      Atom(name: '_AppInfoControllerBase.flatpakDetailsModel');

  @override
  FlatpakDetailsModel get flatpakDetailsModel {
    _$flatpakDetailsModelAtom.reportRead();
    return super.flatpakDetailsModel;
  }

  @override
  set flatpakDetailsModel(FlatpakDetailsModel value) {
    _$flatpakDetailsModelAtom.reportWrite(value, super.flatpakDetailsModel, () {
      super.flatpakDetailsModel = value;
    });
  }

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
  ObservableList<String> get screenshotUrls {
    _$screenshotUrlsAtom.reportRead();
    return super.screenshotUrls;
  }

  @override
  set screenshotUrls(ObservableList<String> value) {
    _$screenshotUrlsAtom.reportWrite(value, super.screenshotUrls, () {
      super.screenshotUrls = value;
    });
  }

  final _$developerNameAtom =
      Atom(name: '_AppInfoControllerBase.developerName');

  @override
  String get developerName {
    _$developerNameAtom.reportRead();
    return super.developerName;
  }

  @override
  set developerName(String value) {
    _$developerNameAtom.reportWrite(value, super.developerName, () {
      super.developerName = value;
    });
  }

  final _$projectLicenseAtom =
      Atom(name: '_AppInfoControllerBase.projectLicense');

  @override
  String get projectLicense {
    _$projectLicenseAtom.reportRead();
    return super.projectLicense;
  }

  @override
  set projectLicense(String value) {
    _$projectLicenseAtom.reportWrite(value, super.projectLicense, () {
      super.projectLicense = value;
    });
  }

  final _$homepageUrlAtom = Atom(name: '_AppInfoControllerBase.homepageUrl');

  @override
  String get homepageUrl {
    _$homepageUrlAtom.reportRead();
    return super.homepageUrl;
  }

  @override
  set homepageUrl(String value) {
    _$homepageUrlAtom.reportWrite(value, super.homepageUrl, () {
      super.homepageUrl = value;
    });
  }

  final _$versionAtom = Atom(name: '_AppInfoControllerBase.version');

  @override
  String get version {
    _$versionAtom.reportRead();
    return super.version;
  }

  @override
  set version(String value) {
    _$versionAtom.reportWrite(value, super.version, () {
      super.version = value;
    });
  }

  final _$categoriesAtom = Atom(name: '_AppInfoControllerBase.categories');

  @override
  String get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(String value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  final _$fontAtom = Atom(name: '_AppInfoControllerBase.font');

  @override
  String get font {
    _$fontAtom.reportRead();
    return super.font;
  }

  @override
  set font(String value) {
    _$fontAtom.reportWrite(value, super.font, () {
      super.font = value;
    });
  }

  final _$_recoveryFlatpakDetailsAsyncAction =
      AsyncAction('_AppInfoControllerBase._recoveryFlatpakDetails');

  @override
  Future _recoveryFlatpakDetails(String key) {
    return _$_recoveryFlatpakDetailsAsyncAction
        .run(() => super._recoveryFlatpakDetails(key));
  }

  @override
  String toString() {
    return '''
flatpakDetailsModel: ${flatpakDetailsModel},
iconUrl: ${iconUrl},
description: ${description},
name: ${name},
screenshotUrls: ${screenshotUrls},
developerName: ${developerName},
projectLicense: ${projectLicense},
homepageUrl: ${homepageUrl},
version: ${version},
categories: ${categories},
font: ${font}
    ''';
  }
}
