import 'package:dio/dio.dart';

abstract class IGithubRepository {
  Future<Response> getDataGitHubRepos(String repository);

  Future<Response> getGitHubRepos();
}
