import 'package:flutter/material.dart';

class Listviewbuilder extends StatefulWidget {
  final int itemcountt;
  final String title;
  final String subtitel;
  final String time;
  const Listviewbuilder({
    super.key,
    required this.itemcountt,
    required this.title,
    required this.subtitel,
    required this.time,
  });

  @override
  State<Listviewbuilder> createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 60),
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: const Color.fromARGB(255, 197, 141, 207),
            child: Icon(Icons.person, size: 30, color: Colors.white),
          ),
          title: Text(
            widget.title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            widget.subtitel,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          trailing: Text(
            widget.time,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        );
      },
    );
  }
}
