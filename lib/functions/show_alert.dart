import 'package:flutter/material.dart';

void ShowAlert({
  required BuildContext context,
  required String title,
  required String message,
  String confirmTExt = "Accept",
  VoidCallback? onConfirm,
}) {
  showDialog(
    context: context,
    barrierDismissible: false, //to alert when click outside windows
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              if (onConfirm != null) onConfirm();
            },
            child: Text(confirmTExt),
          ),
        ],
      );
    },
  );
}
