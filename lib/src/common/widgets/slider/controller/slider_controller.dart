
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderController extends GetxController{
  static SliderController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;
  final pageController = CarouselController();

  void updateCurrentIndex (index){
    carouselCurrentIndex.value = index;
  }
}