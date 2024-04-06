import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:torganic/src/features/bottom_navigation/bottom_navigation.dart';
import 'package:torganic/src/utils/device/device_utility.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import '../../../utils/local_storage/local_storage_keys.dart';
import '../../../utils/local_storage/storage_utility.dart';
import '../../authentication/views/log_in/view/login.dart';
import '../../on_boarding/views/on_boarding.dart';

class SplashController extends GetxController {
  static SplashController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    appStatus();
  }

  Future<void> appStatus()async{
    //AppStatusModel appStatusModel = await _appStatus.getAppStatus(context);

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    debugPrint(version);

    if(version != '2.0.0'){
      showDialog(
          barrierDismissible: false,
          context: Get.overlayContext!,
          builder: (context) {
            return AlertDialog(
              // backgroundColor: Colors.pink[100],
              icon: const Icon(Icons.info),
              title: const Text('Update here'),
              //content: const Text('Are you sure you want to Log out?'),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CupertinoButton(
                        onPressed: () async {
                          AppDeviceUtils.browseUrl('https://play.google.com/store/apps/details?id=com.thetork.kirei&hl=en&gl=US');
                          //_launchUrl(Uri.parse('${appStatusModel.newVersionDownloadLink}'));
                        },
                        child: const Text(
                          'Update',
                          style: TextStyle(color: Colors.red),
                        )),
                  ],
                ),
              ],
            );
          });
    }else {
      changeScreen();
    }
  }

  changeScreen() {
    final isGoogleLogin =
        AppLocalStorage().readData(LocalStorageKeys.isGoogleLogIn) ?? false;
    final isRememberMe =
        AppLocalStorage().readData(LocalStorageKeys.isRememberMe) ?? false;
    final isNotFirst =
        AppLocalStorage().readData(LocalStorageKeys.isNotFirstTime) ?? false;
    Future.delayed(const Duration(seconds: 3), () {
      print('value $isNotFirst');
      print('value $isRememberMe');
      print('value $isGoogleLogin');
      isNotFirst == true
          ? (isRememberMe || isGoogleLogin
              ? Get.offAll(() => const BottomNavigation())
              : Get.offAll(() => const LogIn()))
          : Get.offAll(() => const OnBoarding());
    });
  }
}
