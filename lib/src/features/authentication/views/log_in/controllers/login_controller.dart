import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:torganic/src/features/authentication/data/repositories/auth_repositories.dart';
import 'package:torganic/src/features/bottom_navigation/bottom_navigation.dart';
import 'package:torganic/src/features/home/views/home.dart';
import 'package:torganic/src/features/personalization/controller/user_controller.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import 'package:torganic/src/utils/helpers/network_manager.dart';
import 'package:torganic/src/utils/local_storage/local_storage_keys.dart';
import 'package:torganic/src/utils/local_storage/storage_utility.dart';
import 'package:torganic/src/utils/popups/loaders.dart';

import '../../../../../utils/popups/full_screen_loader.dart';

class LogInPageController extends GetxController {
  static LogInPageController get instance => Get.find();

  final userController = Get.put(UserController());

  ///Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey<FormState> logInFormKey = GlobalKey<FormState>();
  final authController = Get.put(AuthRepositories());

  /// variables
  Rx<bool> passwordObscured = true.obs;
  Rx<bool> rememberMe = false.obs;

  Future<void> emailPasswordLogIn() async {
    final isConnected = await NetworkManager.instance.isConnected();
    try {
      /// Validate Form
      if (!logInFormKey.currentState!.validate()) return;

      /// Start Loading
      FullScreenLoader.openLoadingDialog('Processing', AppImages.loading);

      ///Check Internet
      if (!isConnected) return;
      AppLocalStorage()
          .saveData(LocalStorageKeys.isRememberMe, rememberMe.value);
    } catch (e) {
      /// Error
      AppLoaders.errorSnackBar(title: 'oh, Snap', message: e.toString());
    } finally {
      FullScreenLoader.stopLoading();
      if (logInFormKey.currentState!.validate()) {
        Get.offAll(const BottomNavigation());
      }
    }
  }

  Future<void> googleSignIn() async {
    final isConnected = await NetworkManager.instance.isConnected();
    try {
      FullScreenLoader.openLoadingDialog('Signing in', AppImages.loading);

      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      /// Google sign in
      final userCredential = await authController.signInWithGoogle();

      /// Save user record
      await userController.saveUserData(userCredential);

      /// Stop Loading
      FullScreenLoader.stopLoading();

      Get.offAll(const BottomNavigation());
      AppHelperFunctions.getSnackBar(
          title: 'Loged in', backgroundColor: AppColors.primary);

      AppLocalStorage().saveDataIfNull(LocalStorageKeys.isGoogleLogIn, true);
    } catch (e) {
      FullScreenLoader.stopLoading();
      debugPrint(e.toString());
      AppLoaders.errorSnackBar(title: 'oh Snap..', message: e.toString());
    }
  }

}
