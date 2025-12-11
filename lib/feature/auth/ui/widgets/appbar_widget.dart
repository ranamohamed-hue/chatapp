import 'package:chatapp2/feature/auth/ui/widgets/double_wave_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appBarTheme = Theme.of(context).appBarTheme;
    final titleStyle =
        appBarTheme.titleTextStyle ?? Theme.of(context).textTheme.titleLarge;
    double height = 150;
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      flexibleSpace: Stack(
        children: [
          CustomPaint(
            size: Size(double.infinity, height),
            painter: DoubleWavePainter(),
          ),
          Positioned(
            top: height * 0.40,
            left: 0,
            right: 0,
            child: Center(child: Text('Chat App', style: titleStyle)),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
