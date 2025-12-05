import 'package:chatapp2/feature/forloginscreen/logic/cubit/logincubit.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildElevatedButton.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildHelp.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildSignUpScreen extends StatefulWidget {
  const BuildSignUpScreen({super.key});

  @override
  State<BuildSignUpScreen> createState() => _BuildSignUpScreenState();
}

class _BuildSignUpScreenState extends State<BuildSignUpScreen> {
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
          Buildtextformfield(
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
          Buildtextformfield(
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

          Buildtextformfield(
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
          Buildtextformfield(
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
          Buildelevatedbutton(
            onpress: () {
              if (_formKey.currentState!.validate()) {
                context.read<Logincubit>().gotoVerificationScreen();
              }
            },
            title: "Next step",
            icon: Icons.navigate_next,
          ),
          SizedBox(height: 50),

          Buildhelp(comment: "Next Step", action: "Try Again"),
        ],
      ),
    );
  }
}
