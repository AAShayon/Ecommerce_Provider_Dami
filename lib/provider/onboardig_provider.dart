// import'package:test_commerce/features/authentication/screens/login/login.dart';
// import 'package:flutter/cupertino.dart';
//  
//
// class OnBoardingController extends GetxController{
//   static OnBoardingController get instance => Get.find();
//
//   ///variables
// final pageController=PageController();
// Rx<int> currentPageIndex=0.obs;
// ///update current index when page scroll
//  void updatePageIndicator(index)=>currentPageIndex.value=index;
//
//   ///jump to the specific dot selected page
//   void dotNavigationClick(index){
//     currentPageIndex.value=index;
//     pageController.jumpTo(index);
//   }
//  ///update current index & jump to next page
//  void nextPage(){
//     if(currentPageIndex.value == 2){
//       Get.offAll(const LoginScreen());
//     }else {
//       int page =currentPageIndex.value +1;
//       pageController.jumpToPage(page);
//     }
//  }
//   ///update current index & jump to the next Page
//  // void skipPage(){
//  //    currentPageIndex.value=2;
//  //    pageController.jumpToPage(2);
//  // }
//   void skipPage(){
//     if( currentPageIndex.value==0){
//       Get.offAll(const LoginScreen());
//     }else{
//       // int page =currentPageIndex.value+1;
//       pageController.jumpToPage(2);
//     }
//
//   }
// }
import 'package:flutter/material.dart';
import 'package:test_commerce/features/authentication/screens/login/login.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';

class OnBoardingProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  int _currentPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;

  void updatePageIndicator(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  void dotNavigationClick(int index) {
    _currentPageIndex = index;
    pageController.jumpTo(index.toDouble());
    notifyListeners();
  }

  void nextPage(BuildContext context) {
    if (_currentPageIndex == 2) {
      // Get.offAll(const LoginScreen());
   AppHelperFunctions.navigateToScreenAndRemoveUntil(context, const LoginScreen());

    } else {
      _currentPageIndex++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      notifyListeners();
    }
  }

  void skipPage(BuildContext context) {
    if (_currentPageIndex == 0) {
 AppHelperFunctions.navigateToScreenAndRemoveUntil(context, const LoginScreen());
    } else {
      _currentPageIndex = 2;
      pageController.jumpToPage(2);
      notifyListeners();
    }
  }
}
