import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ulearning_bloc/pages/register/bloc/register_blocs.dart';
import 'package:flutter_ulearning_bloc/pages/register/bloc/register_events.dart';
import 'package:flutter_ulearning_bloc/pages/register/bloc/register_states.dart';

import '../common_widget.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var registerBlocs = context.read<RegisterBlocs>();
    return BlocBuilder<RegisterBlocs, RegisterState>(
        builder: (context, state) => Container(
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
                              buildTextField("Enter your username", "name",
                                  "user", (value) {
                                    context.read<RegisterBlocs>().add(UserNameEvent(value));
                                  }),
                              reusableText("Email"),
                              buildTextField("Enter your email address",
                                  "email", "user", (value) {
                                      registerBlocs.add(EmailEvent(value));
                                  }),
                              reusableText("Password"),
                              buildTextField("Enter your password", "password",
                                  "lock", (value) {
                                      registerBlocs.add(PasswordEvent(value));
                                  }),
                              reusableText("Confirm Password"),
                              buildTextField("Enter your password", "password",
                                  "lock", (value) {
                                    registerBlocs.add(RePasswordEvent(value));
                                  }),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 25.w),
                            child: reusableText(
                                "By creating an account you have to agree with our them & condition.")),
                        buildLogInAdnRegButton("Sign Up", "login", () {
                          Navigator.of(context).pushNamed('register');
                        }),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
