// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'cliente_controller.dart';

class ClientePage extends GetView<ClienteController> {
  final dropValue = ValueNotifier("");
  final dropOpcoes = ["Cliente 1", "Cliente 2", "Cliente 3", "Cliente 4"];
  ClientePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: ValueListenableBuilder(
              valueListenable: dropValue,
              builder: (BuildContext context, String value, _) {
                return SizedBox(
                  width: 280,
                  child: DropdownButton<String>(
                    isExpanded: true,
                    icon: const Icon(Icons.group),
                    hint: const Text("Cliente"),
                    value: (value.isEmpty) ? null : value,
                    onChanged: (escolha) => dropValue.value = escolha.toString(),
                    items: dropOpcoes
                        .map(
                          (op) => DropdownMenuItem(value: op, child: Text(op)),
                        )
                        .toList(),
                  ),
                );
              }),
        ));
  }
}




















// import 'package:flutter/material.dart';

// class ClientePage extends StatefulWidget {
//   const ClientePage({Key? key}) : super(key: key);

//   @override
//   _ClientePageState createState() => _ClientePageState();
// }

// class _ClientePageState extends State<ClientePage> {
//   List<String> items = <String>[
//     "Cliente 1",
//     "Cliente 2",
//     "Cliente 3",
//     "Cliente 4",
//   ];
//   String dropdownValue = "Cliente 1";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: Center(
//           child: DropdownButton<String>(
//               iconSize: 24,
//               elevation: 16,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   dropdownValue = newValue!;
//                 });
//               },
//               value: dropdownValue,
//               items: items.map<DropdownMenuItem<String>>(
//                 (String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 },
//               ).toList())),
//     );
//   }
// }
