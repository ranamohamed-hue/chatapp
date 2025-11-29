import 'package:flutter/material.dart';

class Buildtabs extends StatelessWidget {
  final bool isLoginActive;
  final VoidCallback onsignintap;
  final VoidCallback onsignupap;
  const Buildtabs({
    super.key,
    required this.isLoginActive,
    required this.onsignintap,
    required this.onsignupap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onsignintap,
              child: _BuildTabContent(
                'SignIn',
                Icons.login_outlined,
                isLoginActive,
              ),
            ),
            SizedBox(width: 40),
            GestureDetector(
              onTap: onsignupap,
              child: _BuildTabContent(
                "SignUp",
                Icons.verified_outlined,
                !isLoginActive,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget _BuildTabContent(String title, IconData icon, bool isactive) {
  return Column(
    children: [
      Row(
        children: [
          Icon(
            icon,
            color: isactive ? Colors.purpleAccent : Colors.grey,
            size: 20,
          ),
          SizedBox(width: 6),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: isactive ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
      const SizedBox(height: 4),
      isactive
          ? Container(height: 5, width: 120, color: Colors.purple)
          : const SizedBox(height: 5, width: 120),
    ],
  );
}
