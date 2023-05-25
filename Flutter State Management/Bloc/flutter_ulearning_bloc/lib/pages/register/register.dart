import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_widget.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar('Sign up'),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: reusableText(
                        "Enter your details below to free sign up")),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Username"),
                      buildTextField(
                          "Enter your username", "name", "user", (value) {}),
                      reusableText("Email"),
                      buildTextField("Enter your email address", "email",
                          "user", (value) {}),
                      reusableText("Password"),
                      buildTextField("Enter your password", "password", "lock",
                          (value) {}),
                      reusableText("Confirm Password"),
                      buildTextField("Enter your password", "password", "lock",
                          (value) {}),
                    ],
                  ),
                ),
                Container(margin: EdgeInsets.only(left: 25.w),
                    child: reusableText("By creating an account you have to agree with our them & condition.")),
                buildLogInAdnRegButton("Sign Up", "login", () {
                  Navigator.of(context).pushNamed('register');
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
