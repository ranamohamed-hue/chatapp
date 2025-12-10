import 'package:chatapp2/feature/homescreen/logic/forhome/homestatus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homecubit extends Cubit<Homestatue> {
  Homecubit() : super(HomeInitialState());
  static Homecubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Map<String, dynamic>> appBarItem = [
    {"title": "chats", "icon1": Icons.settings, "icon2": Icons.camera},
    {"title": "UpDates", "icon1": Icons.settings, "icon2": Icons.search},
    {"title": "Calls", "icon1": Icons.settings, "icon2": Icons.call},
  ];
  void changeTab(int index) {
    currentIndex = index;
    emit(ChangeScreen(index: index));
  }
   String get currentTitle => appBarItem[currentIndex]["title"];
  IconData get currentIcon1 => appBarItem[currentIndex]["icon1"];
  IconData get currentIcon2 => appBarItem[currentIndex]["icon2"];
}
