import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final double? height;
  final double? width;
  final Color? color;

  final TextStyle? textStyle;

  const CommonBtn(
      {Key? key,
      this.onPressed,
      this.title = '',
      this.height,
      this.width,
      this.textStyle,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(width ?? double.maxFinite, height ?? 51.0.h),
            backgroundColor: color ?? Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0.r))),
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(textStyle: textStyle),
        ));
  }
}
