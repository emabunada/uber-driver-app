import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_text.dart';

// ignore: must_be_immutable
class AppElevatedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  final Color color;
  final Color brderColor;
  final Color fontColor;
  final double? fontSize;
  final double? radius;
  final double? height;
  final FontWeight? fontWeight;

  const AppElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = const Color(0xFF32343D),
    this.fontSize,
    this.fontWeight,
    this.brderColor = Colors.transparent,
    this.fontColor = Colors.white,
    this.radius,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 7.r),
            side: BorderSide(
              color: brderColor,
            )),
        minimumSize: Size(double.infinity, height ?? 55.h),
      ),
      child: AppText(
        text,
        fontSize: fontSize ?? 18.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: fontColor,
      ),
    );
  }
}
