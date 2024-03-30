
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:torganic/src/features/bottom_navigation/bottom_navigation.dart';
import 'package:torganic/src/features/bottom_navigation/bottom_navigation_two.dart';

import '../../authentication/views/log_in/view/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();


  ///Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;



  /// Update Current Index when Page Scroll
  void updatePageIndicator(index){
    currentPageIndex.value = index;
  }

  /// Jump To specific Page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Set OnBoarding value
  Future setOnBoardingStatus()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('isNotFirst', true);
  }
  /// Update Current Index & Jump To Next Page
  void nextPage(){
    if(currentPageIndex.value == 2){
      setOnBoardingStatus();
      Get.offAll(const LogIn());
    }else{
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }

  /// Skip on-boarding pages
  void skipPage(){
    pageController.jumpToPage(2);
  }
}