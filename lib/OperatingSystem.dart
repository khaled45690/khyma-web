import 'MobileOs.dart';
import 'package:flutter/foundation.dart' show kIsWeb;


class OperatingSystem{
  String os;
  bool isAndroid;
  bool isWeb;
  bool isIos;
  OperatingSystem(){
    if (kIsWeb) {
      // running on the web!
      print("web");
      this.os = "web";
      this.isAndroid = false;
      this.isIos = false;
      this.isWeb = true;
    } else {
      print("not web");
      MobileOs mobileOs = MobileOs();
      print(mobileOs.os);
      // NOT running on the web! You can check for additional platforms here.
    }
  }
}