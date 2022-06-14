import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _preferences;
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future? setTime(int? view) async =>
      await _preferences!.setInt("onboard", view!);
  static int? getTime() => _preferences!.getInt("onboard");
  static Future? setMode(themeMode) async {
    await _preferences!.setString("theme", themeMode);
  }

  static String? getMode() => _preferences!.getString("theme");
}
