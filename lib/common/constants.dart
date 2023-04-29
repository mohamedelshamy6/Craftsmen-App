import 'package:flutter/material.dart';

class Constants {
  static const String token = 'token';
}

void showCustomSnackBar(String value, BuildContext ctx) {
  ScaffoldMessenger.of(ctx).showSnackBar(
    SnackBar(
      content: Text(
        value,
      ),
    ),
  );
}
