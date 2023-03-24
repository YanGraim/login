import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginController extends GetxController {
  final getStorge = GetStorage();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    if (getStorge.read("id") != null) {
      Future.delayed(const Duration(milliseconds: 3000), () {
        Get.offAll(Routes.INTRO);
      });
    }
  }
}
