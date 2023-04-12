import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'cadastro_controller.dart';

class CadastroPage extends GetView<CadastroController> {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Operations",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                child: ListTile(
                  title: Text(
                    "Contratos",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                child: ListTile(
                  title: Text(
                    "OE",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
              SizedBox(
                height: 20,
                width: 380,
                child: Divider(
                  color: Colors.grey[600],
                ),
              )
            ],
          ),
        ));
  }
}
