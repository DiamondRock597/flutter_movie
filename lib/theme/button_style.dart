import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    textStyle: MaterialStateProperty.all(
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
    foregroundColor: MaterialStateProperty.all(
      const Color(0xFF01B4E4),
    ),
  );
}
