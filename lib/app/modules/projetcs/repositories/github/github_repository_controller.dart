import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import 'repository/github_repository.dart';

part 'github_repository_controller.g.dart';

class GithubRepositoryController = _GithubRepositoryControllerBase
    with _$GithubRepositoryController;

abstract class _GithubRepositoryControllerBase with Store {
  final _githubRepository = GithubRepository();

  Future<Response> getDataGitHubRepos(String repository) {
    return _githubRepository.getDataGitHubRepos(repository);
  }

  Future<Response> getGitHubRepos() async {
    return _githubRepository.getGitHubRepos();
  }
}
