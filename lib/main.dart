import 'package:chatapp2/feature/forloginscreen/logic/cubit/logincubit.dart';
import 'package:chatapp2/feature/forloginscreen/ui/screens/splash.dart';
import 'package:chatapp2/feature/homescreen/logic/forhome/homecubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forpopupmenubotton/menubottoncubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Logincubit()),
        BlocProvider(create: (context) => Homecubit()),
                BlocProvider(create: (context) => MenuBottonCubit()),

      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage());
  }
}
