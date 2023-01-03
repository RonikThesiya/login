import 'package:shared_preferences/shared_preferences.dart';

void RegisterUser(String email,String password)async
{
 SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
 sharedPreferences.setString('email', email);
 sharedPreferences.setString('password', password);
}

Future<String?> getemail()async
{
  SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
  return sharedPreferences.getString('email');
}

Future<String?> getpassword() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getString('password');
}

void loginvalue(bool status)async
{
  SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
  sharedPreferences.setBool('status', status);
}

Future<bool?> getloginvalue() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getBool('status');
}

void clear()async{
  SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
  sharedPreferences.clear();
}