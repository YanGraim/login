import 'package:flutter/material.dart';

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
                const PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Sair'),
                    )
                  ],
                )),
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
