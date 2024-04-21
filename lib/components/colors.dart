import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorSelect {
  static LinearGradient getGradientAppbarColor() {
    return !Get.isDarkMode
        ? const LinearGradient(colors: [
            Color.fromARGB(255, 53, 53, 151),
            Colors.blue,
          ])
        : const LinearGradient(colors: [
            Colors.black,
            Colors.grey
          ]);
  }

  static const LinearGradient loginGradient = LinearGradient(colors: [
    Colors.transparent,
    Colors.transparent,
  ]);

  static const LinearGradient buttonGradient = LinearGradient(colors: [
    Colors.blue,
    Colors.blue,
  ]);
  static Color blueColor = const Color.fromARGB(255, 52, 119, 174);
  static LinearGradient sumbitGrdient = const LinearGradient(colors: [
    Colors.black,
    Colors.grey
  ]);
}
