import 'package:flutter/material.dart';

VoidCallback? onPressedFunction({
  required BuildContext context,
  required String nextPage,
  required bool pushReplacement,
  Object? arguments,
}) {
  return () {
    pushReplacement
        ? Navigator.pushReplacementNamed(
            context,
            nextPage,
            arguments: arguments,
          )
        : Navigator.pushNamed(context, nextPage, arguments: arguments);
  };
}
