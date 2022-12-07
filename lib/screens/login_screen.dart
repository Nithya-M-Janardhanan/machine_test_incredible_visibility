import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test_incredible_visibility/common/constants.dart';
import 'package:machine_test_incredible_visibility/widgets/common_button.dart';
import 'package:machine_test_incredible_visibility/widgets/common_card.dart';
import 'package:machine_test_incredible_visibility/common/font_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<IconData> leadingIcons = [Icons.email, Icons.lock];
  List<String> titles = ['Email Address', 'Password'];
  List<String> subTitles = ['robertanitei@gmail.com', '.......'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.logIn,
          style: FontStyle.black18W500,
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey[600],
          ),
        ),
        elevation: 0, // removes the drop shadow of appbar
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Constants.loginTitle1,
                  style: FontStyle.black15,
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Constants.loginTitle2,
                  style: FontStyle.black15,
                )),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: 15.h,
                    ),
                    child: CommonCard(
                      leadingIcon: leadingIcons[index],
                      title: titles[index],
                      subTitle: subTitles[index],
                      trailing: index == 1
                          ? const Icon(Icons.remove_red_eye)
                          : const SizedBox(),
                    ),
                  );
                },
                itemCount: 2,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      Constants.forgotPwd,
                      style: FontStyle.black15,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CommonBtn(
                    title: Constants.login,
                    onPressed: () {},
                    color: Colors.black,
                    textStyle: FontStyle.white15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
