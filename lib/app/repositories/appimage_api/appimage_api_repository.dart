import 'package:dio/native_imp.dart';
import 'package:otter_store/app/shared/config/constants.dart';
import 'interfaces/appimage_api_repository_interface.dart';

class AppimageApiRepository implements IAppimageApiRepository {
  final DioForNative client;

  AppimageApiRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get(Constants.API_APPIMAGE);
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
