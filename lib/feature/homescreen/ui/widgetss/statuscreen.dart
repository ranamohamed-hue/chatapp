import 'package:chatapp2/feature/homescreen/ui/widgetss/customGridViewBuilder.dart';
import 'package:chatapp2/feature/homescreen/ui/widgetss/listViewBuilder.dart';
import 'package:flutter/material.dart';

class Statuscreen extends StatefulWidget {
  const Statuscreen({super.key});

  @override
  State<Statuscreen> createState() => _StatuscreenState();
}

class _StatuscreenState extends State<Statuscreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Up Dates',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
Customgridviewbuilder(),
          SizedBox(height: 20),
          _chanels(),
          Expanded(
            child: Listviewbuilder(
              itemcountt: 5,
              title: "Chanel1",
              subtitel: "Last chat",
              time: "12.12",
            ),
          ),
        ],
      ),
    );
  }
}



Widget _chanels() {
  return Row(
    children: [
      SizedBox(width: 20),
      Text('Chanels', style: TextStyle(fontSize: 23, color: Colors.grey)),
      Spacer(),

      ElevatedButton(
        onPressed: () {},
        child: Text(
          'Discover',
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ),
    ],
  );
}
