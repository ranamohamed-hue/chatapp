import 'package:chatapp2/feature/auth/logic/login_cubit.dart';
import 'package:chatapp2/feature/auth/ui/widgets/elevated_button_widget.dart';
import 'package:chatapp2/feature/auth/ui/widgets/help_widget.dart';
import 'package:chatapp2/feature/auth/ui/widgets/text_form_field_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreenWidget extends StatefulWidget {
  const SignUpScreenWidget({super.key});

  @override
  State<SignUpScreenWidget> createState() => _SignUpScreenWidgetState();
}

class _SignUpScreenWidgetState extends State<SignUpScreenWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernamee = TextEditingController();
  final TextEditingController _userphone = TextEditingController();
  final TextEditingController _useremail = TextEditingController();
  final TextEditingController _userpassword = TextEditingController();
  @override
  void dispose() {
    _usernamee.dispose();
    _useremail.dispose();
    _userphone.dispose();
    _userpassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          //user name
          TextFormFieldWidget(
            title: "User Name",
            hinttext: "Enter Your Name",
            keyboardtype: TextInputType.name,
            controller: _usernamee,
            icon: Icons.person,
            validatorr: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Your name";
              }

              return null;
            },
          ),
          SizedBox(height: 20),
          //user Email
          TextFormFieldWidget(
            title: "User E_Mail",
            hinttext: "Enter Your E_Mail",
            keyboardtype: TextInputType.emailAddress,
            controller: _useremail,
            icon: Icons.email_outlined,
            validatorr: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Your E_Mail";
              }

              return null;
            },
          ),
          SizedBox(height: 20),

          TextFormFieldWidget(
            title: "User Phone",
            hinttext: "Enter Your Phone",
            keyboardtype: TextInputType.phone,
            controller: _userphone,
            icon: Icons.phone,
            validatorr: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Your Phone";
              }
              if (int.tryParse(value) == null) {
                return "Please Enter Only Numbers";
              }
              if (value.length < 11) {
                return "The Phone number must be at least 14 characters long.";
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          TextFormFieldWidget(
            title: "User Password",
            hinttext: "**************",
            keyboardtype: TextInputType.visiblePassword,
            controller: _userpassword,
            icon: Icons.lock,
            validatorr: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Your Phone";
              }
              if (int.tryParse(value) == null) {
                return "Please Enter Only Numbers";
              }
              if (value.length < 14) {
                return "The Password must be at least 14 characters long.";
              }
              return null;
            },
          ),
          SizedBox(height: 50),
          ElevatedButtonWidget(
            onpress: () {
              if (_formKey.currentState!.validate()) {
                context.read<LoginCubit>().gotoVerificationScreen();
              }
            },
            title: "Next step",
            icon: Icons.navigate_next,
          ),
          SizedBox(height: 50),

          Help(comment: "Next Step", action: "Try Again"),
        ],
      ),
    );
  }
}
