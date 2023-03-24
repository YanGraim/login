import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:login/app/modules/intro/IntroScreen.dart';

final sp = GetStorage();
void main() async {
  await GetStorage.init();
  runApp(const GetMaterialApp(
    home: Intro(),
  ));
}





// class TwinsWMS extends StatelessWidget {
//   const TwinsWMS({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: {
//         "/": (context) => Intro(),
//         // "home": (context) => HomeScreen(),
//       },
//     );
//   }
// }




// bool? _is_intro;
//   _is_intro = prefs.read('is_intro');
//   if ((_is_intro == false) || (_is_intro is empty)) {
//     IntroScreen;
//     prefs.write bool('is_intro', true);
//   } else {