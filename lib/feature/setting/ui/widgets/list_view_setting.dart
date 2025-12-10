import 'package:flutter/material.dart';

class ListViewSetting extends StatelessWidget {
  ListViewSetting({super.key});
  final List<Map<String, dynamic>> listitem = [
    {
      "icon": Icons.key,
      "title": "Account",
      "subtitle": "Change number,Security",
    },
    {
      "icon": Icons.lock,
      "title": "Privacy",
      "subtitle": "Block contacts,Self-destructing messages",
    },
    {
      "icon": Icons.face_2,
      "title": "Avatar",
      "subtitle": "Create profile picture,edit",
    },
    {"icon": Icons.chat, "title": "Chats", "subtitle": "Design,Wallpapers"},
    {
      "icon": Icons.save,
      "title": "Storage&data",
      "subtitle": "Network usage and auto-download",
    },
    {
      "icon": Icons.accessibility_new,
      "title": "Access",
      "subtitle": "Increase animation contrast",
    },
    {"icon": Icons.language, "title": "App Language", "subtitle": "Arabic"},
    {"icon": Icons.help, "title": "Help", "subtitle": "Help Center,Coll Us"},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listitem.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(
            listitem[index]['icon'],
            color: Theme.of(context).iconTheme.color,
          ),
          title: Text(
            listitem[index]['title'],
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          subtitle: Text(
            listitem[index]['subtitle'],
            style: Theme.of(context).textTheme.bodySmall,
          ),
        );
      },
    );
  }
}
