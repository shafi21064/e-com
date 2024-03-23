
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:torganic/src/features/authentication/views/log_in/view/login.dart';
import 'package:torganic/src/utils/local_storage/local_storage_keys.dart';
import 'package:torganic/src/utils/local_storage/storage_utility.dart';


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

  /// Update Current Index & Jump To Next Page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(const LogIn());
     AppLocalStorage().saveData(LocalStorageKeys.isFirstTime, false);
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