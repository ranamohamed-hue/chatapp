import 'package:chatapp2/feature/homescreen/logic/forhome/homecubit.dart';
import 'package:chatapp2/feature/homescreen/logic/forhome/homestatus.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/callscreen.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/chatScreen.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/customappbar.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/statuscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/custombottonavebaritems.dart';

class Scaffoldscreenbottonappbar extends StatelessWidget {
  Scaffoldscreenbottonappbar({super.key});

  final List<Widget> screens = [Chatscreen(), Callscreen(), Statuscreen()];

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
          appBar: CustomAppbar(),
          body: screens[cubit.currentIndex],
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 36,
              color:Theme.of(context).iconTheme.color
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
                BottomNavBarItem(
                  icon: Icons.message_outlined,
                  index: 0,
                  title: "Chats",
                ),
                BottomNavBarItem(icon: Icons.update, index: 1, title: "Status"),
                BottomNavBarItem(icon: Icons.call, index: 2, title: "Calls"),
              ],
            ),
          ),
        );
      },
    );
  }
}
