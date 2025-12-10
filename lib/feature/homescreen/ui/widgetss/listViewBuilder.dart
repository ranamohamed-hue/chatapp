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
            backgroundColor: const Color.fromARGB(255, 131, 158, 131),
            child: Icon(Icons.person, color: Theme.of(context).iconTheme.color),
          ),
          title: Text(
            widget.title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          subtitle: Text(
            widget.subtitel,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          trailing: Text(
            widget.time,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        );
      },
    );
  }
}
