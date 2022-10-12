import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import 'app_text.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  final Color color;
  final Color? brderColor;
  final Color fontColor;
  final double? fontSize;
  final double? radius;
  final double? height;
  final FontWeight? fontWeight;
  const AppTextButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.color,
      this.brderColor,
      required this.fontColor,
      this.fontSize,
      this.radius,
      this.height,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.r),
              side: BorderSide(
                color: brderColor ?? appBorderGrey,
              ),
            ),
          ),
          child: AppText(
            text,
            fontSize: fontSize ?? 16.sp,
            color: fontColor,
            fontWeight: fontWeight ?? FontWeight.w400,
          )),
    );
  }
}
