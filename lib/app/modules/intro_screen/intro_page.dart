import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:login/app/modules/login_screen/login_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          scrollPhysics: const BouncingScrollPhysics(),
          pages: [
            PageViewModel(
              title: "Title of blue page",
              body: "Welcome to the app! This is a description on a page with a blue background.",
              image: Center(
                child: SvgPicture.asset(
                  "assets/location.svg",
                  height: 250,
                ),
              ),
              decoration: const PageDecoration(
                pageColor: Colors.white,
              ),
            ),
            PageViewModel(
              title: "Title of blue page",
              body: "Welcome to the app! This is a description on a page with a blue background.",
              image: Center(
                child: SvgPicture.asset(
                  "assets/searching.svg",
                  height: 250,
                ),
              ),
              decoration: const PageDecoration(
                pageColor: Colors.white,
              ),
            ),
            PageViewModel(
              title: "Title of blue page",
              body: "Welcome to the app! This is a description on a page with a blue background.",
              image: Center(
                child: SvgPicture.asset(
                  "assets/camera.svg",
                  height: 250,
                ),
              ),
              decoration: const PageDecoration(
                pageColor: Colors.white,
              ),
            ),
          ],
          onDone: () {
            Get.to(LoginPage());
          },
          onSkip: () {
            Get.to(LoginPage());
          },
          showSkipButton: true,
          skip: const Text(
            "Pular",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF6C63FF),
            ),
          ),
          next: const Icon(
            Icons.arrow_forward,
            color: Color(0xFF6C63FF),
          ),
          done: const Text(
            "Pronto",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF6C63FF),
            ),
          ),
          dotsDecorator: DotsDecorator(
            size: const Size.square(10),
            activeSize: const Size(20.0, 10.0),
            color: Colors.black,
            activeColor: const Color(0xFF6C63FF),
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
        ),
      ),
    );
  }
}
