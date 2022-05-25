import 'package:flutter/material.dart';

enum UserTheme {
  Dark,
  Light,
}

class Dark {
  static const dark = Color(0xFF1C1E25);
  static const semiDark = Color.fromARGB(220, 28, 30, 37);
  static const smoothie = Color(0xFF5C5F6F);
  static const grey = Color(0xFF3E404C);
}

class Light {
  static const darkBlue = Color(0xFF142D55);
  static const lightBlue = Color(0xFF7287A8);
  static const middleBlue = Color(0xFF4A638B);
}
