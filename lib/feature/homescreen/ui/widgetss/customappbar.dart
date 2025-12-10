import 'package:chatapp2/feature/homescreen/logic/forhome/homecubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forpopupmenubotton/menubottoncubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forpopupmenubotton/menubottonstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final appBarTheme = Theme.of(context).appBarTheme;
    final iconolor =
        appBarTheme.foregroundColor ?? Theme.of(context).iconTheme.color;
    final titlestyle =
        appBarTheme.titleTextStyle ?? Theme.of(context).textTheme.titleLarge;
    var cubit = Homecubit.get(context);
    return AppBar(
      elevation: 0,
      toolbarHeight: 50,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<MenuBottonCubit, MenuBottonState>(
            builder: (context, state) {
              List<PopupMenuEntry> items = [];
              if (state is MenuBottonChange) {
                items = state.items;
              }
              return PopupMenuButton(
                elevation: 0.7,

                constraints: const BoxConstraints(maxHeight: 200, minWidth: 79),
                icon: Icon(cubit.currentIcon1),
                itemBuilder: (context) => items,
                onSelected: (value) {
                  print("Selected: $value");
                },
              );
            },
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(cubit.currentIcon2, color: iconolor),
          ),

          const Spacer(),
          Text(cubit.currentTitle, style: titlestyle),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
