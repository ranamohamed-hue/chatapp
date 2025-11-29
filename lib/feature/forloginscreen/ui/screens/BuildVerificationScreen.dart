import 'package:chatapp2/feature/forloginscreen/logic/cubit/logincubit.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildAppBar.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildElevatedButton.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildHelp.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildTextFormField.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Buildverificationscreen extends StatefulWidget {
  const Buildverificationscreen({super.key});

  @override
  State<Buildverificationscreen> createState() =>
      _BuildverificationscreenState();
}

class _BuildverificationscreenState extends State<Buildverificationscreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _verificationcode = TextEditingController();
  @override
  void dispose() {
    _verificationcode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Signis For account',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Buildtextformfield(
                  title: "Verification Number",
                  hinttext: "000 000",
                  keyboardtype: TextInputType.number,
                  controller: _verificationcode,
                  icon: Icons.verified_outlined,
                  validatorr: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your Verification Code";
                    }
                    if (int.tryParse(value) == null) {
                      return "Wrong Code";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 50),
                Buildelevatedbutton(
                  onpress: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<Logincubit>().gotoHomeScreen();
                    }
                  },
                  title: "Login",
                  icon: Icons.verified_outlined,
                ),
                SizedBox(height: 80),

                Buildhelp(
                  comment: "Did Not Receive Code?",
                  action: 'Try Again',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
