import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditions extends StatelessWidget {
  final Color? color;
  final Color? termsColor;
  final Color? privacyColor;
  const TermsAndConditions(
      {Key? key, this.color, this.termsColor, this.privacyColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "By creating an account,you agree to our",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(color: color ?? Colors.white)),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                //  code for launch terms and conditions url
              },
              child: Text(
                "terms&conditions",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  color: termsColor ?? Colors.white,
                  decoration: TextDecoration.underline,
                )),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              "and agree to",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: color ?? Colors.white)),
            ),
            SizedBox(
              width: 3.w,
            ),
            GestureDetector(
              onTap: () {
                // code for launch privacy policy url
              },
              child: Text(
                "privacy policy",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: privacyColor ?? Colors.white,
                        decoration: TextDecoration.underline)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
