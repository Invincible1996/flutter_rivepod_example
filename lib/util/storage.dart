/// @Author: kevin
/// @Title: Storage.dart
/// @Date: 2022-12-01 10:31:17
/// @Description:
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  /// @description description...
  /// @param [ * ] name description...
  static saveData(key, value) async {
    final pref = await SharedPreferences.getInstance();
    final success = pref.setString(key, value);
    return success;
  }

  /// @description description...
  /// @param [ * ] name description...
  static Future<String?> getData(key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(key);
  }

  /// @description description...
  /// @param [ boolean ] name description...
  static Future<bool> removeData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    // Remove data for the 'counter' key.
    final success = await prefs.remove(key);
    return success;
  }
}
