
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loader {
  static loadingDialog(String message) {
    return Get.defaultDialog(
      title: message,
      barrierDismissible: false,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.punch_clock,
            color: HexColor("#430d2d"),
            size: 40,
          ),
          const SizedBox(
            height: 15,
          ),
          CircularProgressIndicator(
            color: HexColor("#430d2d"),
          ),
          const SizedBox(
            height: 15,
          ),
          Text("Please wait!",
              style: TextStyle(
                color: HexColor("#430d2d"),
                fontFamily: "Gotham-Medium",
                fontSize: 16,
              )),
        ],
      ),
    );
  }

  static closeDialog() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}