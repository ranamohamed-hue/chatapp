import 'package:chatapp2/feature/forloginscreen/logic/cubit/logincubit.dart';
import 'package:chatapp2/feature/forloginscreen/logic/cubit/loginstate.dart';
import 'package:chatapp2/feature/forloginscreen/ui/screens/buildVerificationScreen.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildAppBar.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildSignInScreen.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildSignUpScreen.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildTabs.dart';
import 'package:chatapp2/feature/homescreen/ui/screens/home.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Logincubit, Loginstate>(
      listener: (context, state) {
        if (state is GoToVerificationScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Buildverificationscreen()),
          );
        }
        if (state is GoToHomeScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        }
      },
      builder: (context, state) {
        final bool isLoginActive =
            state is LoginTabChange ? state.isLogin : true;

        return Scaffold(
          appBar: BuildAppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  isLoginActive
                      ? Center(
                        child: Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 140, 52, 158),
                            image: const DecorationImage(
                              image: AssetImage('assets/callcenter.GIF'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                      : SizedBox.shrink(),
                  SizedBox(height: 20),
                  Text(
                    isLoginActive
                        ? 'Login On Your Account'
                        : 'Enter the verification code sent to your phone',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Buildtabs(
                    isLoginActive: isLoginActive,
                    onsignintap:
                        () => context.read<Logincubit>().setsigninnActive(),
                    onsignupap:
                        () => context.read<Logincubit>().setsignupActive(),
                  ),
                  const SizedBox(height: 25),
                  isLoginActive
                      ? const Buildsigninscreen()
                      : const BuildSignUpScreen(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
