
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthRepositories extends GetxController{
  static AuthRepositories get instance => Get.find();

  final deviceStorage = GetStorage();


  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {

}

}