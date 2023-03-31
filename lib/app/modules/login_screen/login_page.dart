import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../components/button.dart';
import '../../components/textfield.dart';
import '../home_screen/home_page.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //metodo para logar
  void userIn() {
    Get.to(const HomePage());
  }

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //SIGN IN BUTTON
              // ignore: prefer_const_constructors
              Button(
                onTap: userIn,
              ),

              const SizedBox(
                height: 25,
              ),
              // NOT A MEMBER? REGISTER NOW
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 5,
                      color: Colors.grey[400],
                    )),
                    Row(
                      children: [
                        Text(
                          'Ainda não tem uma conta?',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const Text(
                          'Registrar agora',
                          style: TextStyle(
                              color: Colors.blue, 
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 5,
                      color: Colors.grey[400],
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
