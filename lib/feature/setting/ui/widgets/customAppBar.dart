import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget implements PreferredSizeWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 50,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.purple,
      title: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.white, size: 30),
          ),
          Spacer(),
          Text(
            'Setting',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),

          SizedBox(width: 15),
          IconButton(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 8,
              vertical: 2,
            ),
            onPressed: () {},
            icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
