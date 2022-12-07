import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test_incredible_visibility/common/constants.dart';
import 'package:machine_test_incredible_visibility/screens/login_screen.dart';
import 'package:machine_test_incredible_visibility/screens/signup_screen.dart';
import 'package:machine_test_incredible_visibility/widgets/common_button.dart';
import 'package:machine_test_incredible_visibility/widgets/terms_and_condition.dart';
import 'package:machine_test_incredible_visibility/common/font_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () => Scaffold(
              backgroundColor: Colors.grey[900],
              body: SafeArea(
                  top: false,
                  bottom: false,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Constants.logo,
                        ),
                        Text(Constants.incredibleVisibility,
                            style: FontStyle.white25),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(Constants.incredibleVisibilitySub1,
                            style: FontStyle.white16),
                        Text(Constants.incredibleVisibilitySub2,
                            style: FontStyle.white16),
                        SizedBox(
                          height: 50.h,
                        ),
                        CommonBtn(
                          title: Constants.createAccount,
                          color: Colors.black,
                          textStyle: FontStyle.white15,
                          width: 250.w,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        CommonBtn(
                          title: Constants.login,
                          color: Colors.white,
                          textStyle: FontStyle.black15,
                          width: 250.w,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        const TermsAndConditions()
                      ],
                    ),
                  )),
            ));
  }
}
