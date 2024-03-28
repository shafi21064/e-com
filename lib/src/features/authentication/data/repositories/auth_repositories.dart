import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:torganic/src/utils/device/device_utility.dart';
import 'package:torganic/src/utils/exceptions/exceptions.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

class AuthRepositories extends GetxController {
  static AuthRepositories get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {

  }

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      print(credential.toString());
      print('here');

      return await FirebaseAuth.instance.signInWithCredential(credential);

    } on FirebaseAuthException catch (e) {
      debugPrint(e.credential.toString());
      AppHelperFunctions.showToast(e.message.toString());
    }catch(e){
      debugPrint('Something went wrong');
      return null;
    }
    return null;
  }
}
