
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutWithDrawerController extends GetxController{

  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  openDrawer(){
    return globalKey.currentState!.openDrawer();
  }
}