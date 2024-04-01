import 'package:get/get.dart';
import 'package:torganic/src/features/bottom_navigation/bottom_navigation.dart';
import '../../../utils/local_storage/local_storage_keys.dart';
import '../../../utils/local_storage/storage_utility.dart';
import '../../authentication/views/log_in/view/login.dart';
import '../../on_boarding/views/on_boarding.dart';

class SplashController extends GetxController {
  static SplashController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    changeScreen();
  }

  changeScreen() {
    final isGoogleLogin =
        AppLocalStorage().readData(LocalStorageKeys.isGoogleLogIn);
    final isRememberMe =
        AppLocalStorage().readData(LocalStorageKeys.isRememberMe);
    final isNotFirst =
        AppLocalStorage().readData(LocalStorageKeys.isNotFirstTime);
    Future.delayed(const Duration(seconds: 3), () {
      isNotFirst != null
          ? (isRememberMe || isGoogleLogin
              ? Get.offAll(() => const BottomNavigation())
              : Get.offAll(() => const LogIn()))
          : Get.offAll(() => const OnBoarding());
    });
  }
}
