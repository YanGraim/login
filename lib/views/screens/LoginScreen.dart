import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(label: Text("E-mail"), hintText: "exemplo@email.com", border: OutlineInputBorder()),
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return "Digite seu e-mail";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                      controller: _senhaController,
                      decoration: const InputDecoration(label: Text("Senha"), hintText: "Digite sua senha", border: OutlineInputBorder()),
                      validator: (senha) {
                        if (senha == null || senha.isEmpty) {
                          return "Digite sua senha";
                        } else if (senha.length < 6) {
                          return "Digite uma senha mais forte";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            logar();
                          }
                        },
                        child: const Text("Entrar")),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

logar() async {}
