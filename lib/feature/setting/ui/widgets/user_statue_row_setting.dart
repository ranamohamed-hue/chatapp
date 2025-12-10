import 'package:flutter/material.dart';

class UserStatusRow extends StatelessWidget {
  const UserStatusRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.add_chart_rounded)),
        SizedBox(width: 5),
        IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
        SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('User Name', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 3),
            SizedBox(
              width: 140,
              height: 35,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  'What is Happening',
                  style: Theme.of(
                    context,
                  ).elevatedButtonTheme.style?.textStyle?.resolve({}),
                ),
                icon: Icon(Icons.face_2_rounded, color: Colors.black, size: 15),
              ),
            ),
          ],
        ),
        SizedBox(width:50),
        Icon(Icons.face_2),
      ],
    );
  }
}
