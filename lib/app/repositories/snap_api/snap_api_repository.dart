import 'package:dio/native_imp.dart';
import 'package:otter_store/app/shared/config/constants.dart';
import 'interfaces/snap_api_repository_interface.dart';

class SnapApiRepository implements ISnapApiRepository {
  final DioForNative client;

  SnapApiRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get(Constants.API_SNAPCRAFT);
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
