import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sign_in_blocs.dart';

class SignInController {
  final BuildContext context;

  const SignInController({
    required this.context,
  });

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        //BLocProvider.of
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {}
        if (password.isEmpty) {}
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: password);
          if(credential.user==null){

          }
          if(!credential.user!.emailVerified){

          }

          var user = credential.user;
          if(user!=null){

          }else{

          }
        } catch (e) {}
      }
    } catch (e) {}
  }
}
