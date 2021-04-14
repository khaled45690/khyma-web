import 'dart:io' show Platform;



class MobileOs{
  String os;
  bool isAndroid;
  bool isWeb;
  bool isIos;
  MobileOs(){
    if (Platform.isAndroid) {
      // Android-specific code
      this.os = "android";
      this.isAndroid = true;
      this.isIos = false;
      this.isWeb = false;
    } else if (Platform.isIOS) {
      this.os = "ios";
      this.isAndroid = false;
      this.isIos = true;
      this.isWeb = false;
      // iOS-specific code
    }

  }
}