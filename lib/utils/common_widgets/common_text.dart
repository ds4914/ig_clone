import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonText extends StatelessWidget {
  final String title;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  CommonText(this.title,
      {super.key, this.textColor, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight ?? FontWeight.w400),
    );
  }
}

class CommonIcon extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final double? size;
  CommonIcon(this.icon,{super.key,  this.iconColor, this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 5.0),
      child: Icon(
        icon,
        color: iconColor ?? Colors.white,
        size: size ?? 30,
      ),
    );
  }
}
