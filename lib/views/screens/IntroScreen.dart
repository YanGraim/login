import 'package:flutter/material.dart';

import 'package:get/get.dart';
// ignore_for_file: prefer_const_constructors
import 'package:introduction_screen/introduction_screen.dart';

import 'package:login/views/screens/LoginScreen.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          scrollPhysics: BouncingScrollPhysics(),
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
              bodyWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Click on "),
                  Icon(Icons.edit),
                  Text(" to edit a post"),
                ],
              ),
              image: const Center(child: Icon(Icons.android)),
            ),
            PageViewModel(
              titleWidget: Text(
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
            Get.to(Login());
          },
          onSkip: () {
            Get.to(Login());
          },
          showSkipButton: true,
          skip: Text(
            "Pular",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          next: Icon(
            Icons.arrow_forward,
            color: Colors.blue,
          ),
          done: Text(
            "Pronto",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          dotsDecorator: DotsDecorator(
            size: Size.square(10),
            activeSize: Size(20.0, 10.0),
            color: Colors.black,
            activeColor: Colors.blue,
            spacing: EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
        ),
      ),
    );
  }
}
