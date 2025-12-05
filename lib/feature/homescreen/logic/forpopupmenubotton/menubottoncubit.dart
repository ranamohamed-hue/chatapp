import 'package:chatapp2/feature/homescreen/logic/forpopupmenubotton/menubottonstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuBottonCubit extends Cubit<MenuBottonState> {
  MenuBottonCubit() : super(MenuBottonInitialState());
  static MenuBottonCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<PopupMenuEntry> items = [];
  void popmenubottonchange(int index) {
    currentIndex = index;
    if (index == 0) {
      items = [
        PopupMenuItem(value: "new_group", child: Text("New Group")),
        PopupMenuItem(
          value: "new_group_message",
          child: Text("New Group Message"),
        ),
        PopupMenuItem(value: "linked_devices", child: Text("Linked Devices")),
        PopupMenuItem(value: "starred", child: Text("Starred")),
        PopupMenuItem(value: "read_all", child: Text("Read all")),
        PopupMenuItem(value: "setting", child: Text("Setting")),
      ];
    } else if (index == 1) {
      items = [
        PopupMenuItem(
          value: "clear_call_history",
          child: Text('Clear call history'),
        ),
        PopupMenuItem(value: "scheduled_calls", child: Text('Scheduled calls')),
        PopupMenuItem(value: "setting", child: Text('Settings')),
      ];
    } else if (index == 2) {
      items = [
        PopupMenuItem(value: "create_channel", child: Text('Create a channel')),
        PopupMenuItem(value: "statue_privacy", child: Text('Status privacy')),
        PopupMenuItem(value: "starred", child: Text('Starred')),
        PopupMenuItem(value: "setting", child: Text('Settings')),
      ];
    }
    emit(MenuBottonChange(index: index, items: items));
  }
}
