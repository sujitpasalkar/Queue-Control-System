import 'package:shared_preferences/shared_preferences.dart';

final SharedPref pref = new SharedPref();

class SharedPref {
  String name;
  String phone;
  String email;
  String loginType;
  String address;
  int currentIndex =0;
  // bool getLocation = false;
  Map<String, double> userLocation;



  // SharedPref() {}

  getValues() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    this.phone = (_prefs.getString('userPhone') ?? null);
    this.name = (_prefs.getString('userName') ?? null);
    this.loginType = (_prefs.getString('userLoginType') ?? null);
    this.address = (_prefs.getString('address') ?? null);

  }

  setName(String name) async {
    print('name:$name');
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('userName', name);
    this.name = name;
  }

  setPhone(String phone) async {
    print('Phone:$phone');
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('userPhone', phone);
    this.phone = phone;
  }

  setEmail(String email) async {
    print('Phone:$email');
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('userEmail', email);
    this.email = email;
  }

  setAddr(String addr) async {
    print('Phone:$addr');
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('userAddr', addr);
    this.address = addr;
  }

  setLoginType(String loginType) async {
    print('type:$loginType');
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('userLoginType', loginType);
    this.loginType = loginType;
  }

  clearUser() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.clear();
    name = null;
    phone = null;
    loginType = null;
  }
}
