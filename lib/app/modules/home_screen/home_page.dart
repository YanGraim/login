import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:login/app/modules/home_screen/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bem-Vindo!',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                child: const Text("Logout"),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
