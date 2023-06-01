import 'package:shared_preferences/shared_preferences.dart';
import '../constents/my_constents.dart';

class ThemeService {
  static Future<void> saveData(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(MyConstenst.LOCOL_KEY_THEME, value);
  }

  static Future<String?> readData() async {
    final prefs = await SharedPreferences.getInstance();
    String? valueThemeName = prefs.getString(MyConstenst.LOCOL_KEY_THEME);
    return valueThemeName;
  }
}
