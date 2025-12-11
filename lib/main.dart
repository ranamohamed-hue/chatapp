import 'package:chatapp2/core/theming/app_theme.dart';
import 'package:chatapp2/feature/auth/ui/screens/splash_screen.dart';
import 'package:chatapp2/feature/auth/logic/login_cubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forhome/homecubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forpopupmenubotton/menubottoncubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
