
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController{
  static SignUpPageController get instance => Get.find();

  ///Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Rx<bool> obscured = true.obs;

  onSuffixTap(){
    obscured.value = !obscured.value;
  }

  Future<void> signUp() async{
    try{

    }catch(e){

    }
  }
}