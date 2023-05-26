
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ulearning_bloc/pages/register/bloc/register_blocs.dart';
import 'package:flutter_ulearning_bloc/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:flutter_ulearning_bloc/pages/welcome/bloc/welcome_blocs.dart';

import '../app_bloc.dart';

class AppBlocProvider{
  static get allBlocProvider =>[
    BlocProvider(
      create: (context) => WelcomeBloc(),
    ),
    // BlocProvider(
    //   create: (context) => AppBlocs(),
    // ),
    BlocProvider(
      create: (context) => SignInBloc(),
    ),
    BlocProvider(create: (context) => RegisterBlocs())
  ];
}