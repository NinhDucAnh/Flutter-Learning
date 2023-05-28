import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ulearning_bloc/common/routes/routes.dart';
import 'package:flutter_ulearning_bloc/common/values/colors.dart';
import 'package:flutter_ulearning_bloc/global.dart';

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...AppPages.allBlocProviders(context)],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: AppColors.primaryText),
            elevation: 0,
            backgroundColor: Colors.white,
          )),
          onGenerateRoute: AppPages.generateRouteSettings,
        ),
      ),
    );
  }
}

