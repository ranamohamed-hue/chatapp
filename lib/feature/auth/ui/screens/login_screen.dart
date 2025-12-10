import 'package:chatapp2/feature/auth/logic/login_cubit.dart';
import 'package:chatapp2/feature/auth/logic/login_state.dart';
import 'package:chatapp2/feature/auth/ui/screens/verification_screen.dart';
import 'package:chatapp2/feature/auth/ui/widgets/appbar_widget.dart';
import 'package:chatapp2/feature/auth/ui/widgets/row_tab.dart';
import 'package:chatapp2/feature/auth/ui/widgets/signin_widget.dart';
import 'package:chatapp2/feature/auth/ui/widgets/signup_widget.dart';
import 'package:chatapp2/feature/homescreen/ui/screens/home.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is GoToVerificationScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VerificationScreen()),
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
          appBar: AppBarWidget(),
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
                  TabsWidget(
                    isLoginActive: isLoginActive,
                    onSignInTap:
                        () => context.read<LoginCubit>().setsigninnActive(),
                    onSignUpTap:
                        () => context.read<LoginCubit>().setsignupActive(),
                  ),
                  const SizedBox(height: 25),
                  isLoginActive
                      ? const SignInScreenWidget()
                      : const SignUpScreenWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
