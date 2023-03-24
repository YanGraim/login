import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:login/app/modules/login/LoginScreen.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          scrollPhysics: const BouncingScrollPhysics(),
          pages: [
            PageViewModel(
              title: "Title of orange text and bold page",
              body: "This is a description on a page with an orange title and bold, big body.",
              image: const Center(
                child: Text("👋", style: TextStyle(fontSize: 100.0)),
              ),
              decoration: const PageDecoration(
                titleTextStyle: TextStyle(color: Colors.black),
                bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ),
            PageViewModel(
              title: "Title of custom body page",
              bodyWidget: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Click on "),
                  Icon(Icons.edit),
                  Text(" to edit a post"),
                ],
              ),
              image: const Center(child: Icon(Icons.android)),
            ),
            PageViewModel(
              titleWidget: const Text(
                "TWINS WMS",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              body: "Escreva mais descrições da pagina. Escreva mais descrições da pagina.",
              image: Image.asset(
                "assets/1.png",
                height: 400,
                width: 400,
              ),
            ),
          ],
          onDone: () {
            Get.to(const Login());
          },
          onSkip: () {
            Get.to(const Login());
          },
          showSkipButton: true,
          skip: const Text(
            "Pular",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          next: const Icon(
            Icons.arrow_forward,
            color: Colors.blue,
          ),
          done: const Text(
            "Pronto",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          dotsDecorator: DotsDecorator(
            size: const Size.square(10),
            activeSize: const Size(20.0, 10.0),
            color: Colors.black,
            activeColor: Colors.blue,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
        ),
      ),
    );
  }
}
