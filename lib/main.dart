import 'package:chatapp2/core/theming/app_theme.dart';
import 'package:chatapp2/feature/auth/data/repo/auth_repo_impl.dart';
import 'package:chatapp2/feature/auth/logic/fire_base/Auth_cubit.dart';
import 'package:chatapp2/feature/auth/ui/screens/splash_screen.dart';
import 'package:chatapp2/feature/auth/logic/login_cubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forhome/homecubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forpopupmenubotton/menubottoncubit.dart';
import 'package:chatapp2/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final authRepo = AuthRepoImpl();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => Homecubit()),
        BlocProvider(create: (context) => MenuBottonCubit()),
        BlocProvider(create: (context) => AuthCubit(authRepo)),
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
