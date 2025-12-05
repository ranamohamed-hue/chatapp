import 'package:chatapp2/feature/homescreen/logic/forhome/homecubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forhome/homestatus.dart';
import 'package:chatapp2/feature/homescreen/logic/forpopupmenubotton/menubottoncubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarItem extends StatelessWidget {
  final IconData icon;
  final int index;
  final String title;
  const BottomNavBarItem({
    super.key,
    required this.icon,
    required this.index,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Homecubit, Homestatue>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = Homecubit.get(context);
        bool isSelected = cubit.currentIndex == index;
        return InkWell(
          onTap: () {
            cubit.gotochatscreen(index);
            context.read<MenuBottonCubit>().popmenubottonchange(index);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration:
                isSelected
                    ? BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        184,
                        146,
                        190,
                      ).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    )
                    : null,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color:
                        isSelected
                            ? const Color.fromARGB(255, 88, 86, 88)
                            : Colors.grey,
                    size: 20,
                  ),
                  SizedBox(height: 4),
                  Text(
                    title,
                    style: TextStyle(
                      color:
                          isSelected
                              ? const Color.fromARGB(255, 88, 86, 88)
                              : Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
