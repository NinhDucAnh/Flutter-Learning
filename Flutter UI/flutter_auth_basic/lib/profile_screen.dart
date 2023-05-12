import 'package:flutter/material.dart';
import 'package:flutter_auth_basic/auth.dart';

class ProfileScreen extends StatelessWidget {
  String email;
   String password;
  ProfileScreen(this.email, this.password, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              email
            ),
            Text(
                password
            )
          ],
        ),
      ),
    );
  }
}

