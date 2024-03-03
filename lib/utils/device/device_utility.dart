// import 'dart:io';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/route_manager.dart';
// import 'package:url_launcher/url_launcher_string.dart';
//
// class AppDeviceUtils{
//   static void hideKeyboard(BuildContext context){
//     FocusScope.of(context).requestFocus(FocusNode());
//   }
//   static Future<void> setStatusBarColor(Color color) async {
//     SystemChrome.setSystemUIOverlayStyle(
//         SystemUiOverlayStyle(statusBarColor: color),
//     );
//   }
//   static bool isLandscapeOrientation(BuildContext context){
//     final viewInsets=View.of(context).viewInsets;
//     return viewInsets.bottom == 0 ;
//   }
//   static bool isPortraitOrientation(BuildContext context){
//     final viewInsets=View.of(context).viewInsets;
//     return viewInsets.bottom !=0;
//   }
//   static void setFullScreen(bool enable){
//     SystemChrome.setEnabledSystemUIMode(enable? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
//   }
//   static double getScreenHeight(){
//     return MediaQuery.of(Get.context!).size.height;
//   }
//   static double getScreenWidth(BuildContext context){
//     return MediaQuery.of(context).size.width;
//   }
//   static double getPixelRatio(){
//     return MediaQuery.of(Get.context!).devicePixelRatio;
//   }
//   static double getStatusBarHeight(){
//     return MediaQuery.of(Get.context!).padding.top;
//   }
//   static double getBottomNavigationBarHeight(){
//     return kBottomNavigationBarHeight;
//   }
//   static double getAppBarHeight(){
//     return kToolbarHeight;
//   }
//   static double getKeyboardHeight(){
//     final viewInsets=MediaQuery.of(Get.context!).viewInsets;
//     return viewInsets.bottom;
//   }
//   static Future<bool> isKeyboardVisible() async {
//     final viewInsets=View.of(Get.context!).viewInsets;
//     return viewInsets.bottom > 0;
//   }
//   static Future<bool> isPhysicalDevice() async{
//     return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform==TargetPlatform.iOS ;
//   }
//   static void vibrate(Duration duration){
//     HapticFeedback.vibrate();
//     Future.delayed(duration,() => HapticFeedback.vibrate());
//   }
//   static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async {
//     await SystemChrome.setPreferredOrientations(orientations);
//   }
//   static void showStatusBar(){
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
//   }
//   static Future<bool> hasInternetConnection() async {
//     try{
//       final result = await InternetAddress.lookup("yourchoice.com");
//       return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
//     } on SocketException catch(_){
//       return false;
//     }
//   }
//   static bool isIOS(){
//     return Platform.isIOS;
//   }
//   static bool isAndroid(){
//     return Platform.isAndroid;
// }
//   static void launchUrl(String url) async {
//     if(await canLaunchUrlString(url)){
//       await launchUrlString(url);
//     }else {
//       throw 'Could not launch $url';
//     }
//   }
// }

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDeviceUtils {
  static void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  static bool isLandscapeOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static bool isPortraitOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getKeyboardHeight(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> isKeyboardVisible(BuildContext context) async {
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom > 0;
  }

  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static Future<void> setPreferredOrientations(
      BuildContext context, List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup("yourchoice.com");
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static void launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static void navigateToNamedRoute(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void navigateToReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static void navigateToReplacementNamedRoute(
      BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

// Add more navigation methods as needed.
}
