import 'package:flutter/material.dart';
import 'package:flutter_auth_basic/profile_screen.dart';
import 'package:flutter_auth_basic/sign_in_screen.dart';
import 'package:flutter_auth_basic/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signIn',
      routes:{
        '/signIn':(context) => const SignInScreen(),
        '/signUp':(context) => const SignUpScreen(),
      },
    );
  }
}



