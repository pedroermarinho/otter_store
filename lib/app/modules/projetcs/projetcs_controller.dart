import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:otter_store/app/components/project_component/project_component_widget.dart';
import 'package:otter_store/app/modules/home/home_controller.dart';
import 'package:otter_store/app/modules/projetcs/models/github_repos_model.dart';
import 'package:otter_store/app/modules/projetcs/models/readme_model.dart';

import 'repositories/github/github_repository_controller.dart';

part 'projetcs_controller.g.dart';

class ProjetcsController = _ProjetcsControllerBase with _$ProjetcsController;

abstract class _ProjetcsControllerBase with Store {
  final _homeController = Modular.get<HomeController>();

  @action
  void closeProjectsHome() {
    _homeController.closeProjects();
  }

  @action
  void closeProjects() {
    Modular.to.pop();
  }

  final _githubRepositoryController = Modular.get<GithubRepositoryController>();

  @observable
  ObservableList<Widget> listProjects = ObservableList();

  _ProjetcsControllerBase() {
    getGithubRepos();
  }

  getProjects(String repository) async {
    _githubRepositoryController.getDataGitHubRepos(repository).then(
      (value) {
        if (value != null && value.data != null) {
          ReadmeModel readmeModel =
              ReadmeModel.fromJson(json.decode(value.data));
          listProjects.add(ProjectComponentWidget(readmeModel, 0));
        }
      },
    );
  }

  getGithubRepos() async {
    _githubRepositoryController.getGitHubRepos().then(
      (value) {
        if (value != null && value.data != null) {
          for (var repos in value.data) {
            GithubReposModel githubReposModel =
                GithubReposModel.fromJson(repos);
            getProjects(githubReposModel.name);
          }
        }
      },
    );
  }
}
