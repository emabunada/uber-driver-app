import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBox extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  const AppBox({Key? key, this.width, this.height, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w,
      height: height?.h,
      key: key,
      child: child,
    );
  }
}
