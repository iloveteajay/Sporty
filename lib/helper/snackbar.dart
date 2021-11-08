import 'package:flutter/material.dart';

class SportyAppSnackBar {
  static void showSuccessSnackBar(BuildContext context,
      {required String message,
      int milliseconds = 10000,
      SnackBarBehavior snackBarBehavior = SnackBarBehavior.floating}) {
    ScaffoldMessenger.of(context).showSnackBar(
      new SnackBar(
        backgroundColor: Colors.green,
        behavior: snackBarBehavior,
        action: SnackBarAction(
            textColor: Colors.white,
            label: 'DISMISS',
            onPressed: () => _dismissCurrentSnackBar(context)),
        duration: Duration(milliseconds: milliseconds),
        content: SelectableText(
          message,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  static void showErrorSnackBar(BuildContext context,
      {required String message,
      int milliseconds = 10000,
      SnackBarBehavior snackBarBehavior = SnackBarBehavior.floating}) {
    ScaffoldMessenger.of(context).showSnackBar(
      new SnackBar(
        backgroundColor: Colors.pink,
        behavior: snackBarBehavior,
        action: SnackBarAction(
            textColor: Colors.black,
            label: 'DISMISS',
            onPressed: () => _dismissCurrentSnackBar(context)),
        duration: Duration(milliseconds: milliseconds),
        content: SelectableText(
          message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  static void _dismissCurrentSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}
