import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/popups/full_screen_loader.dart';
import '../../../../../utils/popups/loaders.dart';
import '../view/otp.dart';

class ForgotPasswordController extends GetxController{
  static ForgotPasswordController get instance => Get.find();

  final forgotPasswordEmail = TextEditingController();
  GlobalKey<FormState> forgotEmailKey = GlobalKey<FormState>();

  Future<void> sendCode()async{
    try{
      FullScreenLoader.openLoadingDialog('Sending', AppImages.loaderAnimation);

      if(!forgotEmailKey.currentState!.validate()) return;



    }catch(e){
      AppLoaders.errorSnackBar(title: 'oh, Snap', message: e.toString());
    }finally{
      FullScreenLoader.stopLoading();
      if(forgotEmailKey.currentState!.validate()){
        Get.to(const Otp());
      }
    }
  }
}