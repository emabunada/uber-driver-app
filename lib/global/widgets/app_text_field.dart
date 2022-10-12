import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class AppTextField extends StatelessWidget {
  final IconData? icon;
  final String hint;
  final String? img;
  final TextAlign? align;
  final TextEditingController? controller;
  final TextInputType inputType;
  final double? hintSize;
  final TextInputAction? inputAction;
  final bool isSecure;
  final TextDirection? direction;
  final bool? expand;
  final int? minLine;
  final int? maxLine;
  final double? height;
  final Widget? prefix;
  final String? Function(String?)? validator;

  const AppTextField({
    Key? key,
    this.icon,
    required this.hint,
    this.direction,
    this.align,
    this.inputType = TextInputType.text,
    required this.controller,
    this.isSecure = false,
    required this.validator,
    this.img,
    this.inputAction,
    this.hintSize,
    this.expand,
    this.minLine,
    this.maxLine,
    this.prefix,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 55.h,
      child: TextFormField(
        key: key,
        controller: controller,
        textAlign: align ?? TextAlign.start,
        textDirection: direction,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: inputType,
        textInputAction: inputAction,
        autocorrect: false,
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 10.sp),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: hintSize ?? 14.sp,
            fontFamily: 'Neo Sans Arabic',
            color: appTextGrey5,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide: const BorderSide(
              color: Color(0xFFE8E8E8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide: const BorderSide(
              color: Color(0xFFE8E8E8),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide: const BorderSide(
              color: Color(0xFFE8E8E8),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          suffixIcon: icon != null
              ? Icon(
                  icon,
                  color: appTextGrey5,
                )
              : img != null
                  ? SizedBox(
                      width: 25.w,
                      height: 17.h,
                      child: Image.asset(
                        img ?? '',
                      ),
                    )
                  : null,
          prefixIcon: prefix,
        ),
        validator: validator,
        expands: expand ?? true,
        minLines: minLine,
        maxLines: maxLine,
      ),
    );
  }
}
