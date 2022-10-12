import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/premitive_reference.dart';
import 'app_text.dart';

class AppMenu extends StatefulWidget {
  const AppMenu({
    Key? key,
    required this.list,
    required this.hint,
    required this.selectedIndex,
    this.fontColor,
    this.hintColor,
    this.fontSize,
    this.hintSize,
  }) : super(key: key);
  final double? fontSize;
  final double? hintSize;
  final List<String> list;
  final String hint;
  final Ref<int>? selectedIndex;
  final Color? fontColor;
  final Color? hintColor;
  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: 55.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(9.r),
        border: Border.all(
          color: const Color(0xFFE8E8E8),
        ),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: const SizedBox(),
        borderRadius: BorderRadius.circular(12.r),
        dropdownColor: white,
        iconSize: 28.h,
        hint: AppText(
          widget.hint,
          fontSize: widget.hintSize ?? 16.sp,
          color: widget.hintColor ?? white,
        ),
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: appBarGrey,
        ),
        value: widget.selectedIndex!.value >= 0
            ? widget.list[widget.selectedIndex!.value]
            : null,
        items: widget.list
            .map((e) => DropdownMenuItem<String>(
                  value: e,
                  child: AppText(
                    fontSize: widget.fontSize ?? 18.sp,
                    color: widget.fontColor ?? Colors.white,
                    e,
                  ),
                ))
            .toList(),
        onChanged: (val) {
          setState(() {
            widget.selectedIndex!.value =
                widget.list.indexOf(val ?? widget.list[0]);
          });
        },
      ),
    );
  }
}
