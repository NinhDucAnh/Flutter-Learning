import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ulearning_bloc/pages/sign_in/sign_in_controller.dart';

import '../common_widget.dart';
import 'bloc/sign_in_blocs.dart';
import 'bloc/sign_in_events.dart';
import 'bloc/sign_n_states.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) => Container(
              color: Colors.white,
              child: SafeArea(
                child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: buildAppBar('Log In'),
                  body: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildThirdPartyLogin(context),
                        Center(
                            child: reusableText(
                                "Or use your email account to login")),
                        Container(
                          margin: EdgeInsets.only(top: 36.h),
                          padding: EdgeInsets.only(left: 25.w, right: 25.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              reusableText("Email"),
                              SizedBox(
                                height: 5.h,
                              ),
                              buildTextField(
                                  "Enter your email address", "email", "user",
                                  (value) {
                                context
                                    .read<SignInBloc>()
                                    .add(EmailEvent(value));
                              }),
                              reusableText("Password"),
                              SizedBox(
                                height: 5.h,
                              ),
                              buildTextField(
                                  "Enter your password", "password", "lock",
                                  (value) {
                                context
                                    .read<SignInBloc>()
                                    .add(PasswordEvent(value));
                              })
                            ],
                          ),
                        ),
                        forgotPassword(),
                        buildLogInAdnRegButton("Log In", "login", () {
                          SignInController(context: context)
                              .handleSignIn("email");
                        }),
                        buildLogInAdnRegButton("Sign up", "register", () {
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
