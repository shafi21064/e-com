import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:torganic/src/features/authentication/views/log_in/view/login.dart';
import 'package:torganic/src/features/bottom_navigation/bottom_navigation.dart';
import 'package:torganic/src/utils/device/device_utility.dart';
import 'package:torganic/src/utils/exceptions/exceptions.dart';
import 'package:torganic/src/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:torganic/src/utils/exceptions/firebase_exceptions.dart';
import 'package:torganic/src/utils/exceptions/platform_exceptions.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

class AuthRepositories extends GetxController {
  static AuthRepositories get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  User? get authUser => _auth.currentUser;

  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;
  }


  /// Google Sign in
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);

    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (_){
      throw const FormatException();
    } on PlatformException catch (e){
      throw AppPlatformException(e.code).message;
    } catch(e){
      debugPrint('Something went wrong');
      return Get.offAll(const LogIn());
    }
  }

  /// logout user
  Future<void> logout () async {
    try{
      await FirebaseAuth.instance.signOut();
      Get.offAll(()=> const LogIn());
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (_){
      throw const FormatException();
    } on PlatformException catch (e){
      throw AppPlatformException(e.code).message;
    } catch(e) {
      throw 'Something went wrong';
    }
  }

}
