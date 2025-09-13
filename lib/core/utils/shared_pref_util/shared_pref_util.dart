import 'package:shared_preferences/shared_preferences.dart';

class PrefsHelper {
  final Future<SharedPreferences> prefs;

  PrefsHelper(this.prefs);

  Future<void> setValue<T>(String key, T value) async {
    final preferences = await prefs;

    if (value is bool) {
      await preferences.setBool(key, value);
    } else if (value is String) {
      await preferences.setString(key, value);
    } else if (value is int) {
      await preferences.setInt(key, value);
    } else if (value is double) {
      await preferences.setDouble(key, value);
    } else if (value is List<String>) {
      await preferences.setStringList(key, value);
    } else {
      throw UnsupportedError('Type ${value.runtimeType} not supported');
    }
  }

  Future<T?> getValue<T>(String key) async {
    final preferences = await prefs;

    if (T == bool) {
      return preferences.getBool(key) as T?;
    } else if (T == String) {
      return preferences.getString(key) as T?;
    } else if (T == int) {
      return preferences.getInt(key) as T?;
    } else if (T == double) {
      return preferences.getDouble(key) as T?;
    } else if (T == List<String>) {
      return preferences.getStringList(key) as T?;
    } else {
      throw UnsupportedError('Type $T not supported');
    }
  }

  Future<void> remove(String key) async {
    final preferences = await prefs;
    await preferences.remove(key);
  }
}
