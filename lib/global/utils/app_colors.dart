
import 'package:flutter/material.dart';

const Color appTextGrey = Color(0xFF434858);
const Color appOrange = Color(0xFFED6522);
const Color appButtonGrey = Color(0xFF32343D);
const Color appBorderGrey = Color(0xFFD5D5D5);
const Color appNotificationGrey = Color(0xFFAFAFAF);
const Color appIconGrey = Color(0xFFC9C6C6);
const Color appBarGrey = Color(0xFF707070);
const Color appTextGrey2 = Color(0xFFCEC6C6);
const Color appTextGrey3 = Color(0xFFA8A8A8);
const Color appTextGrey4 = Color(0xFFAbAAAA);
const Color appTextGrey5 = Color(0xFF7C7C7C);
const Color appContainerBg = Color(0xFFF6F6F6);
const Color containerBg = Color(0xFFF0F0F0);
const Color white = Colors.white;
const Color black = Colors.black;
const Color transparent = Colors.transparent;
String toEngNumber(String input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(arabic[i], english[i]);
  }

  return input;
}
