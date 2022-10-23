import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class TokenService extends ChangeNotifier {
  List<String> testTokenList = [];

  SharedPreferences prefs;

  TokenService(this.prefs) {
    testTokenList = prefs.getStringList("tokenList") ?? ['1', '1', '1', '1'];
    print(testTokenList);
  }
  //토큰 변경
  void updateTestToken(String token, int page) {
    testTokenList[page] = token;
    prefs.setStringList("tokenList", testTokenList);
    notifyListeners();
  }
}
