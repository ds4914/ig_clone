import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? buttonColor;
  final void Function()? onPressed;

  CustomButton(
      {super.key,
      required this.title,
      this.buttonColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              title,
              style: TextStyle(color: Colors.white,fontSize: 17.sp),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    buttonColor ?? Colors.purpleAccent)),
          ),
        ),
      ],
    );
  }
}
