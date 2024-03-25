import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  /// Key
  final GlobalKey<ScaffoldState> homeKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> homeTwoKey = GlobalKey<ScaffoldState>();

}