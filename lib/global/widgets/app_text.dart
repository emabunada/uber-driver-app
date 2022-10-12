import 'package:flutter/material.dart';
import 'package:drivers_app/global/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final double? fontHeight;
  final int? maxLine;

  const AppText(
    this.text, {
    Key? key,
    required this.fontSize,
    this.fontWeight = FontWeight.w400,
    this.color = white,
    this.textAlign = TextAlign.center,
    this.maxLine,
    this.fontHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      overflow: TextOverflow.clip,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        fontFamily: 'Neo Sans Arabic',
        overflow: TextOverflow.ellipsis,
        color: color,
        height: fontHeight,
      ),
    );
  }
}
