import 'dart:convert';

import 'package:bookia/features/Auth/data/model/auth_response/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedPref {
  static late SharedPreferences prefs;
  static const String keyUserData = 'userData';
  static init() async {
    prefs = await SharedPreferences.getInstance();
  }
static saveUserData(DataUser? dataUser) {
  if (dataUser == null) return;
  //عشان احول الماب الى سترينج اللي هو ال جسون اللي جاي من الريسبونس
    var json=dataUser.tojson();
    var jsonToString=jsonEncode(json);
    savedata(keyUserData, jsonToString);
  }

  static getUserdata() {
    var jsonString = getdata(keyUserData);
    if (jsonString == null) return null;
    //عشان احول ال سترينج اللي هو ال جسون الى ماب
    var stringTojson = jsonDecode(jsonString);
    var dataUser= DataUser.fromjson(stringTojson);
    return dataUser;
  }

 static savedata(String key, dynamic value) {
    if (value is String) {
      prefs.setString(key, value);
    } else if (value is int) {
      prefs.setInt(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    } else if (value is double) {
      prefs.setDouble(key, value);
    } else if (value is List<String>) {
      prefs.setStringList(key, value);
    }
  }

 static dynamic getdata(String key) {
    return prefs.get(key);
  }

  static removedata(String key) {
    prefs.remove(key);
  }
}
