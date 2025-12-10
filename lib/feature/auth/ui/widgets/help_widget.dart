import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  final String comment;
  final String action;
  const Help({super.key, required this.comment, required this.action});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(comment, style: Theme.of(context).textTheme.bodyMedium),
          TextButton(
            onPressed: () {},
            child: Text(
              action,
              style: Theme.of(context).textTheme.bodyMedium
            ),
          ),
        ],
      ),
    );
  }
}
