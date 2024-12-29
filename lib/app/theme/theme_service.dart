import 'package:flutter_start/app/theme/constants/them_const.dart';
import 'package:shared_preferences/shared_preferences.dart';


abstract class ThemeService {
  static Future<void> saveData(String nameTheme) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(TextKey.locKeyTheme, nameTheme);
  }

  static Future<String?> readData() async {
    final prefs = await SharedPreferences.getInstance();
    String? themeMod = prefs.getString(TextKey.locKeyTheme);
    return themeMod;
  }


}
