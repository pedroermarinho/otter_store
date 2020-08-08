import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

//import 'package:otter_store/app/repositories/appimage_api/interfaces/appimage_api_repository_interface.dart';

class MockClient extends Mock implements Dio {}

void main() {
//  IAppimageApiRepository repository;
  // MockClient client;

  setUp(() {
    // client = MockClient();
    // repository = AppimageApiRepository(client);
  });

  group('AppimageApiRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<AppimageApiRepository>());
    //  });

    test('returns a Post if the http call completes successfully', () async {
      //    when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
      //        .thenAnswer((_) async =>
      //            Response(data: {'title': 'Test'}, statusCode: 200));
      //    Map<String, dynamic> data = await repository.fetchPost(client);
      //    expect(data['title'], 'Test');
    });
  });
}
