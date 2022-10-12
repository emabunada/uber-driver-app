import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void debug(dynamic text) {
  String msg = text.toString();
  if (kDebugMode) {
    print('\x1B[31m$msg\x1B[0m');
  }
}

showMessage({required String message, bool error = true}) {
  Get.showSnackbar(GetSnackBar(
    message: message,
    backgroundColor: error ? Colors.red : Colors.green,
    duration: const Duration(seconds: 2),
  ));
}

bool checkEmailFormate(String text) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  return regex.hasMatch(text);
}
