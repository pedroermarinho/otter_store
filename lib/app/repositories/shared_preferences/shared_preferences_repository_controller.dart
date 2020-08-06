import 'package:mobx/mobx.dart';
import 'package:otter_store/app/repositories/shared_preferences/repository/shared_preferences_repository.dart';
import 'package:otter_store/app/shared/config/theme/themes.dart';

part 'shared_preferences_repository_controller.g.dart';

class SharedPreferencesRepositoryController = _SharedPreferencesRepositoryControllerBase
    with _$SharedPreferencesRepositoryController;

abstract class _SharedPreferencesRepositoryControllerBase with Store {
  final _preferencesRepository = SharedPreferencesRepository();

  void saveTheme(ThemeOption theme) {
    _preferencesRepository.saveTheme(theme.toString());
  }

  Future<ThemeOption> getTheme() async {
    String theme = await _preferencesRepository.getTheme();
    if (theme == ThemeOption.darkTheme.toString()) {
      return ThemeOption.darkTheme;
    } else {
      return ThemeOption.lightTheme;
    }
  }
}
