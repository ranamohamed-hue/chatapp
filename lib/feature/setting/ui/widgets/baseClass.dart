import 'package:flutter/widgets.dart';

abstract class Baseclass {}

class ListHeaderItem implements Baseclass {
  final IconData icon;
  final String title;
  final IconData avatar;
  final Widget bi;
  ListHeaderItem({
    required this.icon,
    required this.title,
    required this.bi,
    required this.avatar,
  });
}

class ListItem implements Baseclass {
  final IconData icon;
  final String title;
  final String subtitle;
  ListItem({required this.icon, required this.title, required this.subtitle});
}
