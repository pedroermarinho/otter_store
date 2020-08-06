import 'package:dio/dio.dart';
import 'package:otter_store/app/shared/config/constants.dart';
import 'package:otter_store/app/shared/utils/github_utils.dart';

import 'github_repository_interface.dart';

class GithubRepository extends IGithubRepository {
  @override
  Future<Response> getDataGitHubRepos(String repository) async {
    try {
      Response response =
          await Dio().get(GitHubUtils.getGithubUrlRepository(repository));
      return response;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Response> getGitHubRepos() async {
    try {
      Response response = await Dio().get(Constants.API_GITHUB);
      return response;
    } catch (e) {
      return null;
    }
  }
}
