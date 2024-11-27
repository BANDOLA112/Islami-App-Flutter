import 'package:shared_preferences/shared_preferences.dart';

class CachData{
  static late SharedPreferences sharedPreferences;
  static initalizeCach()async{
    sharedPreferences= await SharedPreferences.getInstance();
  }
  static Future<bool> setData({required String key,required dynamic value})async{
    if(value is String){
      await sharedPreferences.setString(key, value);
      return true;
    }else if(value is bool){
      await sharedPreferences.setBool(key, value);
      return true;
    }else if(value is int){
      await sharedPreferences.setInt(key, value);
      return true;
    }else if(value is double){
      await sharedPreferences.setDouble(key, value);
      return true;
    }else{
      return false;
    }
  }
  static dynamic getData({required String key})async{
    await sharedPreferences.get(key);
  }
  static void removeData({required String key}){
    sharedPreferences.remove(key);
  }
}