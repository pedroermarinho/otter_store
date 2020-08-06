class ReadmeModel {
  String projectName;
  String version;
  String description;
  String iconSrc;
  String snapStoreName;
  List<String> screenshotSrc;
  String author;
  String githubUsername;
  String authorLinkedinUsername;
  String authorTwitterUsername;
  String authorWebsite;
  String homepage;
  String projectDemoUrl;
  String repositoryUrl;
  String contributingUrl;
  String documentationUrl;
  String licenseUrl;
  String issuesUrl;
  String license;
  List<String> installCommand;
  List<String> usageCommand;
  List<String> testCommand;
  Repository repository;
  List<Credits> credits;
  List<String> keywords;
  bool isGithubRepos;
  bool hasStartCommand;
  bool hasTestCommand;

  ReadmeModel(
      {this.projectName,
      this.version,
      this.description,
      this.iconSrc,
      this.snapStoreName,
      this.screenshotSrc,
      this.author,
      this.githubUsername,
      this.authorLinkedinUsername,
      this.authorTwitterUsername,
      this.authorWebsite,
      this.homepage,
      this.projectDemoUrl,
      this.repositoryUrl,
      this.contributingUrl,
      this.documentationUrl,
      this.licenseUrl,
      this.issuesUrl,
      this.license,
      this.installCommand,
      this.usageCommand,
      this.testCommand,
      this.repository,
      this.credits,
      this.keywords,
      this.isGithubRepos,
      this.hasStartCommand,
      this.hasTestCommand});

  factory ReadmeModel.fromJson(Map<String, dynamic> json) {
    return ReadmeModel(
      projectName: json['project_name'].toString(),
//      version: json['version'],
      description: json['description'].toString(),
      iconSrc: json['icon_src'],
//      snapStoreName: json['snap_store_name'],
//      screenshotSrc: json['screenshot_src'].cast<String>(),
//      author: json['author'],
//      githubUsername: json['github_username'],
//      authorLinkedinUsername: json['author_linkedin_username'],
//      authorTwitterUsername: json['author_twitter_username'],
//      authorWebsite: json['author_website'],
//      homepage: json['homepage'],
//      projectDemoUrl: json['project_demo_url'],
      repositoryUrl: json['repository_url'].toString(),
//      contributingUrl: json['contributing_url'],
//      documentationUrl: json['documentation_url'],
//      licenseUrl: json['license_url'],
//      issuesUrl: json['issues_url'],
//      license: json['license'],
//      installCommand: json['install_command'].cast<String>(),
//      usageCommand: json['usage_command'].cast<String>(),
//      testCommand: json['test_command'].cast<String>(),
//      repository: json['repository'] != null
//          ? new Repository.fromJson(json['repository'])
//          : null,
//      credits: json['credits'] != null
//          ? new List<Credits>()
//          : _setCredits(json['credits']),
////      keywords: json['keywords'].cast<String>(),
//      isGithubRepos: json['is_github_repos'],
//      hasStartCommand: json['has_start_command'],
//      hasTestCommand: json['has_test_command'],
    );
  }

  static List<Credits> _setCredits(var data) {
    var credits = new List<Credits>();
    data.forEach((v) {
      credits.add(Credits.fromJson(v));
    });
    return credits;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['project_name'] = this.projectName;
    data['version'] = this.version;
    data['description'] = this.description;
    data['icon_src'] = this.iconSrc;
    data['snap_store_name'] = this.snapStoreName;
    data['screenshot_src'] = this.screenshotSrc;
    data['author'] = this.author;
    data['github_username'] = this.githubUsername;
    data['author_linkedin_username'] = this.authorLinkedinUsername;
    data['author_twitter_username'] = this.authorTwitterUsername;
    data['author_website'] = this.authorWebsite;
    data['homepage'] = this.homepage;
    data['project_demo_url'] = this.projectDemoUrl;
    data['repository_url'] = this.repositoryUrl;
    data['contributing_url'] = this.contributingUrl;
    data['documentation_url'] = this.documentationUrl;
    data['license_url'] = this.licenseUrl;
    data['issues_url'] = this.issuesUrl;
    data['license'] = this.license;
    data['install_command'] = this.installCommand;
    data['usage_command'] = this.usageCommand;
    data['test_command'] = this.testCommand;
    if (this.repository != null) {
      data['repository'] = this.repository.toJson();
    }
    if (this.credits != null) {
      data['credits'] = this.credits.map((v) => v.toJson()).toList();
    }
    data['keywords'] = this.keywords;
    data['is_github_repos'] = this.isGithubRepos;
    data['has_start_command'] = this.hasStartCommand;
    data['has_test_command'] = this.hasTestCommand;
    return data;
  }
}

class Repository {
  String type;
  String url;

  Repository({this.type, this.url});

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(type: json['type'], url: json['url']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}

class Credits {
  String name;
  String url;

  Credits({this.name, this.url});

  factory Credits.fromJson(Map<String, dynamic> json) {
    return Credits(name: json['name'], url: json['url']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
