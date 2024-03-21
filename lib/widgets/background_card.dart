import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key, required this.translation});

  final double translation;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(0, 80 * translation, 0),
      child: DecoratedBox(
        child: Container(
          height: 300,
          width: 250,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 12,
              offset: Offset(-7, 7),
            ),
          ],
        ),
      ),
    );
  }
}
