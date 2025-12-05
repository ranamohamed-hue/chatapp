import 'package:chatapp2/feature/homescreen/ui/widgetss/customGridViewBuilder.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/listViewBuilder.dart';
import 'package:flutter/material.dart';

class Callscreen extends StatefulWidget {
  const Callscreen({super.key});

  @override
  State<Callscreen> createState() => _CallscreenState();
}

class _CallscreenState extends State<Callscreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
         Customgridviewbuilder() ,
          SizedBox(height: 20),
          Expanded(
            child: Listviewbuilder(
              itemcountt: 5,
              title: "Person Name",
              subtitel: "Date",
              time: "12.12",
            ),
          ),
        ],
      ),
    );
  }
}

