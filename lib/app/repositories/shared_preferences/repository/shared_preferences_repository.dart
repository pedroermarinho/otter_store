import 'package:otter_store/app/repositories/shared_preferences/repository/interfaces/shared_preferences_repository_interface.dart';
import 'package:otter_store/app/shared/config/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository extends ISharedPreferencesRepository {
  @override
  Future<String> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.get(Constants.theme);
  }

  @override
  void saveTheme(String theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(Constants.theme, theme);
  }
}
