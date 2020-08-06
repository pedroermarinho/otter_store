import '../config/constants.dart';

class GitHubUtils {
  static String getGithubUrlRepository(String repository) {
    return Constants.RAW_GITHUB + "/" + repository + "/master/readme.json";
  }
}
