
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:torganic/src/features/authentication/data/repositories/auth_repositories.dart';
import 'package:torganic/src/features/bottom_navigation/bottom_navigation.dart';
import 'package:torganic/src/features/home/views/home.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import 'package:torganic/src/utils/helpers/network_manager.dart';
import 'package:torganic/src/utils/popups/loaders.dart';

import '../../../../../utils/popups/full_screen_loader.dart';

class LogInPageController extends GetxController{
  static LogInPageController get instance => Get.find();

  ///Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey<FormState> logInFormKey = GlobalKey<FormState>();

  /// variables
  Rx<bool> passwordObscured = true.obs;
  Rx<bool> rememberMe = true.obs;



  Future<void> emailPasswordLogIn() async{
    final isConnected = await NetworkManager.instance.isConnected();
    try{
      /// Start Loading
      FullScreenLoader.openLoadingDialog('Processing', AppImages.loaderAnimation);

      ///Check Internet
      if(!isConnected) return;

      /// Validate Form
      if(!logInFormKey.currentState!.validate()) return;


    }catch(e){
      /// Error
      AppLoaders.errorSnackBar(title: 'oh, Snap', message: e.toString());
    }finally{
      FullScreenLoader.stopLoading();
      if(logInFormKey.currentState!.validate()){
        Get.offAll(const BottomNavigation());
      }
    }
  }

  Future<void> googleSignIn()async{
    final isConnected = await NetworkManager.instance.isConnected();
    try{

      if(!isConnected){
        FullScreenLoader.stopLoading();
        return;
      }
      await AuthRepositories().signInWithGoogle().then((value) {
        Get.offAll(const BottomNavigation());
        AppHelperFunctions.getSnackBar(title: 'Loged in', backgroundColor: AppColors.primary);
      });

    }catch(e){
      print(e.toString());
      AppLoaders.errorSnackBar(title: 'oh Snap..', message: e.toString());
    }
  }
}