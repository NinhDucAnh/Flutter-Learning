import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ulearning_bloc/common/routes/names.dart';
import 'package:flutter_ulearning_bloc/global.dart';
import 'package:flutter_ulearning_bloc/pages/application/bloc/app_blocs.dart';
import 'package:flutter_ulearning_bloc/pages/register/bloc/register_blocs.dart';
import 'package:flutter_ulearning_bloc/pages/register/register.dart';
import 'package:flutter_ulearning_bloc/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:flutter_ulearning_bloc/pages/sign_in/sign_in.dart';
import 'package:flutter_ulearning_bloc/pages/welcome/bloc/welcome_blocs.dart';
import 'package:flutter_ulearning_bloc/pages/welcome/welcome.dart';

import '../../pages/application/application_page.dart';

class AppPages {
  static List<PageEntity> routes() {
    return [
      PageEntity(
          route: AppRoutes.INITIAL,
          page: const Welcome(),
          bloc: BlocProvider(
            create: (_) => WelcomeBloc(),
          )),
      PageEntity(
          route: AppRoutes.SIGN_IN,
          page: const SignIn(),
          bloc: BlocProvider(
            create: (_) => SignInBloc(),
          )),
      PageEntity(
          route: AppRoutes.REGISTER,
          page: const Register(),
          bloc: BlocProvider(
            create: (_) => RegisterBloc(),
          )),
      PageEntity(
          route: AppRoutes.APPLICATION,
          page: const ApplicationPage(),
          bloc: BlocProvider(
            create: (_) => AppBloc(),
          )
      )
    ];
  }

  static List<dynamic> allBlocProviders(BuildContext context) {
    return routes().map((bloc) => bloc.bloc).toList();
  }

  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      var result = routes().where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();
        if(result.first.route == AppRoutes.INITIAL && deviceFirstOpen){
          bool isLoggedIn = Global.storageService.getIsLoggedIn();
          if(isLoggedIn){
            return MaterialPageRoute(builder: (_) => const ApplicationPage(), settings: settings);
          }
          return MaterialPageRoute(builder: (_) => const SignIn(), settings: settings);
        }
        return MaterialPageRoute(
            builder: (_) => result.first.page, settings: settings);
      }
    }
    return MaterialPageRoute(
        builder: (_) => const SignIn(), settings: settings);
  }
}

class PageEntity {
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({required this.route, required this.page, this.bloc});
}
