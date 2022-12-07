import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test_incredible_visibility/common/constants.dart';
import 'package:machine_test_incredible_visibility/widgets/common_button.dart';
import 'package:machine_test_incredible_visibility/widgets/common_card.dart';
import 'package:machine_test_incredible_visibility/widgets/terms_and_condition.dart';
import 'package:machine_test_incredible_visibility/common/font_style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<IconData> leadingIcons = [
    Icons.person,
    Icons.email,
    Icons.date_range,
    Icons.lock
  ];
  List<String> titles = [
    'Full Name',
    'Email Address',
    'Date of Birth',
    'Password'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.createAccount,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              Constants.createAccountTitle1,
              style: FontStyle.black15,
            ),
            Text(
              Constants.createAccountTitle2,
              style: FontStyle.black15,
            ),
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
                      trailing: index == 3
                          ? const Icon(Icons.visibility_off)
                          : const SizedBox(),
                    ),
                  );
                },
                itemCount: 4,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: CommonBtn(
                      title: Constants.createAccount,
                      onPressed: () {},
                      color: Colors.black,
                      textStyle: FontStyle.white15,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TermsAndConditions(
                    color: Colors.grey[600],
                    termsColor: Colors.purple,
                    privacyColor: Colors.purple,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
