import 'package:chatapp2/feature/homescreen/logic/homecubit.dart';
import 'package:chatapp2/feature/homescreen/logic/homestatus.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/callscreen.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/chatScreen.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/statuscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Scaffoldscreenbottonappbar extends StatelessWidget {
  Scaffoldscreenbottonappbar({super.key});

  int currentIndex = 0;

  List<Widget> screens = [Chatscreen(), Callscreen(), Statuscreen()];

  @override
  Widget build(BuildContext context) {
    final double bottomSafePadding = MediaQuery.of(context).padding.bottom;
    const double navBarHeight = 55.0;
    final double totalBottomHeight = navBarHeight + bottomSafePadding;
    return BlocConsumer<Homecubit, Homestatue>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = Homecubit.get(context);

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            elevation: 0,
            toolbarHeight: 50,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(cubit.currentIcon1, size: 30, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(cubit.currentIcon2, size: 30, color: Colors.white),
                ),
                Spacer(),
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
          ),
          body: screens[cubit.currentIndex],
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 36,
              color: const Color.fromARGB(255, 197, 141, 207),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          bottomNavigationBar: Container(
            color: const Color.fromARGB(255, 234, 230, 235),
            height: totalBottomHeight,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                bottomNavitionBar(
                  context: context,
                  icon: Icons.message_outlined,
                  index: 0,
                  title: "Chats",
                ),
                bottomNavitionBar(
                  context: context,
                  icon: Icons.update,
                  index: 1,
                  title: "Status",
                ),
                bottomNavitionBar(
                  context: context,
                  icon: Icons.call,
                  index: 2,
                  title: "Calls",
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget bottomNavitionBar({
    required BuildContext context,
    required IconData icon,
    required int index,
    required String title,
  }) {
    var cubit = Homecubit.get(context);
    bool isSelected = cubit.currentIndex == index;
    return InkWell(
      onTap: () => cubit.gotochatscreen(index),
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
  }
}
