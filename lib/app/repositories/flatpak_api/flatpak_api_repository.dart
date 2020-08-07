import 'package:dio/native_imp.dart';
import 'package:otter_store/app/shared/config/constants.dart';
import 'interfaces/flatpak_api_repository_interface.dart';

class FlatpakApiRepository implements IFlatpakApiRepository {
  final DioForNative client;

  FlatpakApiRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get(Constants.API_FLATPAK);
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
