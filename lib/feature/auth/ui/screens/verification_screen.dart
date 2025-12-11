
import 'package:chatapp2/feature/auth/logic/login_cubit.dart';
import 'package:chatapp2/feature/auth/ui/widgets/elevated_button_widget.dart';
import 'package:chatapp2/feature/auth/ui/widgets/help_widget.dart';
import 'package:chatapp2/feature/auth/ui/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:chatapp2/feature/auth/ui/widgets/appbar_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() =>
      _verificationscreenState();
}

class _verificationscreenState extends State<VerificationScreen> {
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
      appBar: AppBarWidget(),
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
                TextFormFieldWidget(
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
                ElevatedButtonWidget(
                  onpress: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<LoginCubit>().gotoHomeScreen();
                    }
                  },
                  title: "Login",
                  icon: Icons.verified_outlined,
                ),
                SizedBox(height: 80),

                Help(
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
