import 'package:chatapp2/feature/forloginscreen/ui/widgets/buildDoubleWave.dart';
import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 150;
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: height,
      flexibleSpace: Stack(
        children: [
          CustomPaint(
            size: Size(double.infinity, height),
            painter: DoubleWavePainter()
          ),
          Positioned(
            top: height * 0.40,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Chat App',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(150);
}
