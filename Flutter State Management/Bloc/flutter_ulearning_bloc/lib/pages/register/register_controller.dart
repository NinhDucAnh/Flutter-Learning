import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ulearning_bloc/common/widgets/flutter_toast.dart';
import 'package:flutter_ulearning_bloc/pages/register/bloc/register_blocs.dart';

class RegisterController {
  final BuildContext context;

  const RegisterController(this.context);

  Future<void> handleEmailRegister() async {
    final state = context.read<RegisterBloc>().state;
    String userName = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if (userName.isEmpty) {
      toastInfo(msg: "User name can not be empty");
      return;
    }
    if (email.isEmpty) {
      toastInfo(msg: 'Email name can not be empty');
      return;
    }
    if (password.isEmpty) {
      toastInfo(msg: 'Password name can not be emty');
      return;
    }
    if (rePassword.isEmpty) {
      toastInfo(msg: 'Your password confirmation is wrong');
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        toastInfo(
            msg:
                "An email has been sent to your registered email."
                    " To active it please check your email box and click on the link");
        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo(msg: "The password provided is too weak");
      } else if (e.code == 'email-already-in-user') {
        toastInfo(msg: 'The email is already in user');
      } else if (e.code == 'invalid-password') {
        toastInfo(msg: 'Your email id is invalid');
      }
    }
  }
}
