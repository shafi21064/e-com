import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/popups/full_screen_loader.dart';
import '../../../../../utils/popups/loaders.dart';
import '../view/new_password.dart';

class OtpController extends GetxController{
  static OtpController get instance => Get.find();

  final otpCodeController = TextEditingController();
  GlobalKey<FormState> otpKey = GlobalKey<FormState>();

  Future<void> verify()async{
    try{
      FullScreenLoader.openLoadingDialog('Sending', AppImages.loaderAnimation);

      if(!otpKey.currentState!.validate()) return;



    }catch(e){
      AppLoaders.errorSnackBar(title: 'oh, Snap', message: e.toString());
    }finally{
      FullScreenLoader.stopLoading();
      if(otpKey.currentState!.validate()){
        Get.to(const NewPassword());
      }
    }
  }
}