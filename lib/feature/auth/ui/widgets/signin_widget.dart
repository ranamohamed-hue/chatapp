import 'package:chatapp2/feature/auth/logic/login_cubit.dart';
import 'package:chatapp2/feature/auth/ui/widgets/elevated_button_widget.dart';
import 'package:chatapp2/feature/auth/ui/widgets/help_widget.dart';
import 'package:chatapp2/feature/auth/ui/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreenWidget extends StatefulWidget {
  const SignInScreenWidget({super.key});

  @override
  State<SignInScreenWidget> createState() => _SignInScreenWidgetState();
}

class _SignInScreenWidgetState extends State<SignInScreenWidget> {
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
            title: "Verification",
            icon: Icons.verified_outlined,
          ),
          Help(comment: "Next Step", action: "Try Again"),
        ],
      ),
    );
  }
}
