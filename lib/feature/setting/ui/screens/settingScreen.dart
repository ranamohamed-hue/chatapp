import 'package:chatapp2/feature/setting/ui/widgets/appbar_setting_widget.dart';
import 'package:chatapp2/feature/setting/ui/widgets/list_view_setting.dart';
import 'package:chatapp2/feature/setting/ui/widgets/user_statue_row_setting.dart';
import 'package:flutter/material.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserStatuesAppBar(),
      body: Column(
        children: [SizedBox(height: 15,),
          UserStatusRow(),
          SizedBox(height: 10),
          Expanded(child: ListViewSetting()),
        ],
      ),
    );
  }
}
