import 'package:shared_preferences/shared_preferences.dart';

class MyChatSharedPrefrence {
  static SharedPreferences? sharedPreferences;

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> remove(
    String key,
  ) async {
    return await sharedPreferences?.remove(key);
  }

  static Future<void> setData(
      {required String key, required dynamic value}) async {
    if (value is String) {
      await sharedPreferences!.setString(key, value);
    } else if (value is int) {
      await sharedPreferences!.setInt(key, value);
    } else if (value is bool) {
      await sharedPreferences!.setBool(key, value);
    } else {
      sharedPreferences!.setDouble(key, value);
    }
  }

  static get(String key) {
    return sharedPreferences?.get(
      key,
    );
  }
}
