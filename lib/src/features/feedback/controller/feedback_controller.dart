import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedbackController extends GetxController{
  FeedbackController get instance => Get.find();

  final GlobalKey<ScaffoldState> feedBackKey = GlobalKey<ScaffoldState>();

  /// Variable
  Rx<bool> loginTrouble = false.obs;
  Rx<bool> phoneNumberTrouble = false.obs;
  Rx<bool> personalProfileTrouble = false.obs;
  Rx<bool> otherTrouble = false.obs;

  /// Text Field Controller
  final feedBackController = TextEditingController();

}