import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFullScreenDialog {
  static void showDialog() {
    Get.dialog(
      WillPopScope(
        child: Container(
          child: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Color(0xff72cec1)),
            ),
          ),
        ),
        onWillPop: () => Future.value(false),
      ),
      barrierDismissible: false,
      barrierColor: Color(0xff141A31).withOpacity(.3),
      useSafeArea: true,
    );
  }

  static void cancelDialog() {
    Get.back();
  }
}
