import 'package:dio/native_imp.dart';
import 'package:flutter/cupertino.dart';
import 'package:otter_store/app/shared/config/constants.dart';

import 'interfaces/flatpak_details_api_repository_interface.dart';

class FlatpakDetailsApiRepository implements IFlatpakDetailsApiRepository {
  final DioForNative client;

  FlatpakDetailsApiRepository(this.client);

  Future fetchPost({@required String flatpakAppId}) async {
    final response = await client.get(Constants.API_FLATPAK + flatpakAppId);
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
