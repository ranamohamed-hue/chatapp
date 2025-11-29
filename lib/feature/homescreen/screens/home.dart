import 'package:chatapp2/feature/homescreen/widgets/screens/callscreen.dart';
import 'package:chatapp2/feature/homescreen/widgets/widgetss/scaffoldscreenbottonappbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffoldscreenbottonappbar(
      title: "Chat App",
      icon1: Icons.settings,
      icon2: Icons.camera,
      body: Callscreen(),
    );
  }
}
