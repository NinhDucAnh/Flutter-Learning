import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ulearning_bloc/app_bloc.dart';
import 'package:flutter_ulearning_bloc/app_event.dart';
import 'package:flutter_ulearning_bloc/common/values/colors.dart';
import 'package:flutter_ulearning_bloc/pages/bloc_providers.dart';
import 'package:flutter_ulearning_bloc/pages/register/register.dart';
import 'package:flutter_ulearning_bloc/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:flutter_ulearning_bloc/pages/sign_in/sign_in.dart';
import 'package:flutter_ulearning_bloc/pages/welcome/bloc/welcome_blocs.dart';
import 'package:flutter_ulearning_bloc/pages/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProvider.allBlocProvider,
      child: ScreenUtilInit(
        builder: (context,child) =>  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(
                color: AppColors.primaryText
              ),
              elevation: 0,backgroundColor: Colors.white,
            )
          ),
          home:  const Welcome(),
          routes: {
            // "myHomePage": (context) => const MyHomePage(),
            "signIn": (context) => const SignIn(),
            "register": (context) => const Register(),
          },
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     lazy: true,
  //     create: (context) => WelcomeBloc(),
  //     child: ScreenUtilInit(
  //       builder: (context,child) => const MaterialApp(
  //         debugShowCheckedModeBanner: false,
  //         home:  Welcome(),
  //       ),
  //     ),
  //   );
  // }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('My Demo'),),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child:BlocBuilder<AppBlocs,AppState>(
            builder: (context,state) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  "${BlocProvider.of<AppBlocs>(context).state.counter}",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: 'heroTag1',
            onPressed: () => BlocProvider.of<AppBlocs>(context).add(Increment()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'heroTag2',
            onPressed: () => BlocProvider.of<AppBlocs>(context).add(Decrement()),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

