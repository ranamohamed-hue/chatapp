import 'package:flutter/material.dart';

abstract class MenuBottonState {}

final class MenuBottonInitialState extends MenuBottonState {}

final class MenuBottonChange extends MenuBottonState {
  final int index;
  final List<PopupMenuEntry> items;
  MenuBottonChange({required this.index, required this.items});
}
