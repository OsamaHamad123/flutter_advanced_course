import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  SharedPrefHelper._();

  /// remove data from SharedPreferences
  static removeData(String key) async {
    debugPrint('Removing data for key: $key');
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  /// clear all data from SharedPreferences
  static clearAllData() async {
    debugPrint('Clearing all data from SharedPreferences');
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  /// set data in SharedPreferences
  static setData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    debugPrint('Setting data for key: $key with value: $value');
    switch (value.runtimeType) {
      case String:
        await prefs.setString(key, value);
        break;
      case int:
        await prefs.setInt(key, value as int);
        break;
      case bool:
        await prefs.setBool(key, value as bool);
        break;
      case double:
        await prefs.setDouble(key, value as double);
        break;
      default:
        throw Exception('Unsupported value type');
    }
  }

  ///Gets a bool value from SharedPreferences
  static Future<bool?> getBoolData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  /// get double value from SharedPreferences
  static Future<double?> getDoubleData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key);
  }

  /// get int value from SharedPreferences
  static Future<int?> getIntData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  /// get string value from SharedPreferences
  static Future<String?> getStringData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  /// saves A [value] with a [key] securely in FlutterSecureStorage
  static setSecureData(String key, String value) async {
    const flutterSecureStorage = FlutterSecureStorage();

    debugPrint(
      'FlutterSecureStorage secure data for key: $key with value: $value',
    );
    // Here you can implement encryption logic before saving
    await flutterSecureStorage.write(
      key: key,
      value: value,
    ); // Save encrypted value
  }

  /// retrieves securely stored data from FlutterSecureStorage
  static Future<String?> getSecureData(String key) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('Retrieving secure data for key: $key');
    String? encryptedValue = await flutterSecureStorage.read(key: key) ?? '';
    // Here you can implement decryption logic after retrieving
    return encryptedValue; // Return decrypted value
  }

  /// clears all securely stored data from FlutterSecureStorage
  static Future<void> clearSecureData() async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('Clearing all secure data from FlutterSecureStorage');
    await flutterSecureStorage.deleteAll();
  }
}
