import 'package:otter_store/app/shared/config/constants.dart';

class ReadmeUtils {
  static String projectImgUrl(String projectName, String imgSrc) {
    return Constants.RAW_GITHUB + "/" + projectName + "/master/" + imgSrc;
  }
}
