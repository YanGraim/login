import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/login_screen/login_page.dart';
import 'alert_dialog.dart';

class DropDown extends StatelessWidget {
  final Function()? onTap;
  const DropDown({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                    child: Row(
                  children: [
                    // CONFIGURAÇÕES
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Configurações'),
                    )
                  ],
                )),
                const PopupMenuItem(
                    child: Row(
                  children: [
                    // DARK MODE
                    Icon(
                      Icons.settings_brightness,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Modo Escuro'),
                    )
                  ],
                )),
                PopupMenuItem(
                  child: const Row(
                    children: [
                      // LOGOUT
                      Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text('Sair'),
                      )
                    ],
                  ),
                  onTap: () async {
                    final action = await AlertDialogs.yesNoDialog(
                        context, "Sair", "Tem certeza que deseja sair?");
                    if (action == DialogsAction.yes) {
                      Get.to(LoginPage());
                    } else {}
                  },
                ),
              ],
              child: const Icon(
                Icons.more_vert,
                size: 28.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
