import 'package:dio/native_imp.dart';
import 'interfaces/flatpak_details_api_repository_interface.dart';

class FlatpakDetailsApiRepository implements IFlatpakDetailsApiRepository {
  final DioForNative client;

  FlatpakDetailsApiRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
