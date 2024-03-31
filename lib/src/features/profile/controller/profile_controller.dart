import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  ProfileController get instance => Get.find();

  final GlobalKey<ScaffoldState> profileKey = GlobalKey<ScaffoldState>();
}