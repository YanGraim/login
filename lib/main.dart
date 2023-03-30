import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:login/app/modules/intro_screen/intro_page.dart';
import 'package:login/app/modules/login_screen/login_page.dart';

void main() async {
  await GetStorage.init();
  final box = GetStorage();
  box.remove("is_intro");
  bool sp = box.read("is_intro") ?? false;
  if (sp) {
    runApp(
        GetMaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));
  } else {
    box.write("is_intro", true);
    runApp(const GetMaterialApp(
        debugShowCheckedModeBanner: false, home: IntroPage()));
  }
}


// void main() async {
//   await GetStorage.init();
//   runApp(const GetMaterialApp(home: Intro()));

//