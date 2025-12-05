import 'package:chatapp2/feature/homescreen/logic/forhome/homecubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forpopupmenubotton/menubottoncubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forpopupmenubotton/menubottonstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = Homecubit.get(context);
    return AppBar(
      backgroundColor: Colors.purple,
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
              return PopupMenuButton(elevation: 0.7,
              color: const Color.fromARGB(255, 217, 212, 218),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              constraints: const BoxConstraints(
                maxHeight: 200,minWidth: 79
              ),
              position: PopupMenuPosition.under,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                icon: Icon(cubit.currentIcon1, color: Colors.white),
                itemBuilder: (context) => items,
                onSelected: (value) {
                  print("Selected: $value");
                  //######################################################################################
                },
              );
            },
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(cubit.currentIcon2, size: 30, color: Colors.white),
          ),

          const Spacer(),
          Text(
            cubit.currentTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
