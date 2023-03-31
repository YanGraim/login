import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/app/modules/home_screen/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Twins WMS',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(250, 26, 35, 126)),
      ),
      home: const MyHomePage(title: 'Twins WMS'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<IconData> icons = [
    Icons.app_registration_sharp,
    Icons.article_sharp,
    Icons.assignment,
    Icons.border_outer_outlined,
    Icons.window_rounded,
    Icons.info_outlined
  ];
  final List<String> texts = [
    'Separação',
    'Conferência',
    'Romanejo',
    'Inventário',
    'Abas',
    'Sobre',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: [
        Expanded(
          child: GridView.builder(
            itemCount: icons.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 90,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: const Color.fromARGB(250, 26, 35, 126),
                      ),
                      child: Icon(
                        icons[index],
                        size: 64,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    texts[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ]),
      bottomNavigationBar: Stack(
        children: [
          BottomAppBar(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Text('usuario1'),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Text('versão 0.0'),
            ),
          ),
        ],
      ),
    );
  }
}
