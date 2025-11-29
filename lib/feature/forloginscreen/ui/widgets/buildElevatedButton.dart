import 'package:flutter/material.dart';

class Buildelevatedbutton extends StatelessWidget {
  final VoidCallback onpress;
  final String title;
  final IconData icon;
  const Buildelevatedbutton({
    super.key,
    required this.onpress,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 150,
        child: ElevatedButton.icon(
          onPressed: onpress,
          icon: Icon(icon,size: 25,color: Colors.white,),
          label: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            padding: const EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
          ),
        ),
      ),
    );
  }
}
