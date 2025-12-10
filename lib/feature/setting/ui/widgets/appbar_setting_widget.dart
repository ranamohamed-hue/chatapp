import 'package:flutter/material.dart';

class UserStatuesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserStatuesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appBarTheme = Theme.of(context).appBarTheme;
    final iconolor =
        appBarTheme.foregroundColor ?? Theme.of(context).iconTheme.color;
    final titlestyle =
        appBarTheme.titleTextStyle ?? Theme.of(context).textTheme.titleLarge;
    return AppBar(
      elevation: 0,
      toolbarHeight: 50,
      automaticallyImplyLeading: false,

      title: Row(
        children: [
          IconButton(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 8,
              vertical: 2,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: iconolor),
          ),

          Text('Setting', style: titlestyle),

          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: iconolor),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
