import 'package:flutter/material.dart';

class Buildtextformfield extends StatelessWidget {
  final String title;
  final String hinttext;
  final TextInputType keyboardtype;
  final TextEditingController controller;
  final IconData icon;
  final String? Function(String?)? validatorr;
  const Buildtextformfield({
    super.key,
    required this.title,
    required this.hinttext,
    required this.keyboardtype,
    required this.controller,
    required this.icon,
    required this.validatorr,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardtype,
      validator: validatorr,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(color: Colors.grey, fontSize: 13),
        hintText: hinttext,
        hintStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
        prefixIcon: IconButton(
          icon: Icon(icon, color: Colors.purpleAccent),
          onPressed: () {},
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.purpleAccent, width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      ),
    );
  }
}
