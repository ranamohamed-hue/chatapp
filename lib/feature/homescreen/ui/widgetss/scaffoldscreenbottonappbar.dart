import 'package:flutter/material.dart';

class Scaffoldscreenbottonappbar extends StatefulWidget {
  final Widget body;
  final String title;
  final IconData icon1;
  final IconData icon2;
  const Scaffoldscreenbottonappbar({
    super.key,
    required this.title,
    required this.icon1,
    required this.icon2,
    required this.body,
  });

  @override
  State<Scaffoldscreenbottonappbar> createState() =>
      _ScaffoldscreenbottonappbarState();
}

class _ScaffoldscreenbottonappbarState
    extends State<Scaffoldscreenbottonappbar> {
  int currentIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double bottomSafePadding = MediaQuery.of(context).padding.bottom;
    const double navBarHeight = 55.0;

    final double totalBottomHeight = navBarHeight + bottomSafePadding;
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
              icon: Icon(widget.icon1, size: 30, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(widget.icon2, size: 30, color: Colors.white),
            ),
            Spacer(),
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: widget.body,
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Icon(Icons.add,size: 36,color: const Color.fromARGB(255, 197, 141, 207),)),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 234, 230, 235),
        height: totalBottomHeight,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            bottomNavitionBar(
              icon: Icons.message_outlined,
              index: 0,
              title: "Chats",
            ),
            bottomNavitionBar(icon: Icons.update, index: 1, title: "Status"),
            bottomNavitionBar(icon: Icons.groups, index: 2, title: "Groups"),
            bottomNavitionBar(icon: Icons.call, index: 3, title: "Calls"),
          ],
        ),
      ),
    );
  }

  Widget bottomNavitionBar({
    required IconData icon,
    required int index,
    required String title,
  }) {
    bool isSelected = currentIndex == index;
    return InkWell(
      onTap: () => _onItemTap(index),
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
