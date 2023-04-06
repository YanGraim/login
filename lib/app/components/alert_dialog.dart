import 'package:flutter/material.dart';

enum DialogsAction { yes, no }

class AlertDialogs {
  static Future<DialogsAction> yesNoDialog(
    BuildContext context,
    final title,
    final body,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(DialogsAction.no),
                  child: const Text('Não')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(DialogsAction.yes),
                  child: const Text('Sim'))
            ],
          );
        });
    return (action != null) ? action : DialogsAction.no;
  }
}
