import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../components/textfield.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),

              // LOGO
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),

              // WELCOME BACK
              Text(
                'Bem-vindo a Leal Sistemas!',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(
                height: 25,
              ),

              //USERNAME
              MyText(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 25,
              ),
              //PASSWORD
              MyText(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 25,
              ),
              //FORGOT YOUR PASSWORD?
              Text('Forgot password?',
              style: TextStyle(color: Colors.grey[600]),)
              
              //SIGN IN BUTTON

              // NOT A MEMBER? REGISTER NOW
            ],
          ),
        ),
      ),
    );
  }
}
