import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/popups/full_screen_loader.dart';
import '../../../../../utils/popups/loaders.dart';
import '../../log_in/view/login.dart';

class NewPasswordController extends GetxController{
  static NewPasswordController get instance => Get.find();

  final newPassword = TextEditingController();
  final newConfirmPassword = TextEditingController();
  GlobalKey<FormState> newPasswordKey = GlobalKey<FormState>();

  /// variables
  Rx<bool> passwordObscured = true.obs;
  Rx<bool> confirmPasswordObscured = true.obs;


  Future<void> submit()async{
    try{
      FullScreenLoader.openLoadingDialog('Sending', AppImages.loaderAnimation);

      if(!newPasswordKey.currentState!.validate()) return;



    }catch(e){
      AppLoaders.errorSnackBar(title: 'oh, Snap', message: e.toString());
    }finally{
      FullScreenLoader.stopLoading();
      if(newPasswordKey.currentState!.validate()){
        Get.offAll(const LogIn());
      }
    }
  }
}