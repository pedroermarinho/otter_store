import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:otter_store/app/repositories/snap_api/interfaces/snap_api_repository_interface.dart';
import 'package:otter_store/app/repositories/snap_api/snap_api_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  ISnapApiRepository repository;
   MockClient client;

  setUp(() {
//     client = MockClient();
//     repository = SnapApiRepository(client);
  });

  group('SnapApiRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<SnapApiRepository>());
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
