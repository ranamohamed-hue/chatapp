import 'package:chatapp2/feature/forloginscreen/logic/cubit/logincubit.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildElevatedButton.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildHelp.dart';
import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Buildsigninscreen extends StatefulWidget {
  const Buildsigninscreen({super.key});

  @override
  State<Buildsigninscreen> createState() => _BuildsigninscreenState();
}

class _BuildsigninscreenState extends State<Buildsigninscreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userphone = TextEditingController();
  @override
  void dispose() {
    _userphone.dispose();
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
            title: "Verification",
            icon: Icons.verified_outlined,
          ),
          Buildhelp(comment: "Next Step", action: "Try Again"),
        ],
      ),
    );
  }
}
