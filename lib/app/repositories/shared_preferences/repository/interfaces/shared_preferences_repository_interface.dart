abstract class ISharedPreferencesRepository {
  void saveTheme(String theme);

  Future<String> getTheme();
}
