import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextField extends StatelessWidget {
  final String? labelText;
  final Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffixIcon;
 final TextEditingController? controller;
  const CommonTextField(
      {super.key,
      this.obscureText,
      this.labelText,
        this.controller,
      this.onChanged,
      this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      onChanged: onChanged,
      controller: controller,
      style: TextStyle(color: Colors.white),
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          suffix: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            borderSide: BorderSide(color: Colors.white24, width: 0.0),
          ),
          focusColor: Colors.white24,
          focusedBorder: InputBorder.none,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.white70),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 0.0),
          ),
          hintText: labelText,
          hintStyle: const TextStyle(color: Colors.white24)),
    );
  }
}
