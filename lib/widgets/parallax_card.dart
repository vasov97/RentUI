import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rent_ui/colors.dart';

class ParallaxCard extends StatelessWidget {
  const ParallaxCard({
    super.key,
    required this.imagePath,
    required this.parallaxValue,
  });

  final String imagePath;
  final double parallaxValue;

  BoxDecoration get _parallaxUrlImageDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.mainGrey,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 12,
            offset: Offset(-7, 7),
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter:
              const ColorFilter.mode(Colors.black26, BlendMode.colorBurn),
          alignment: Alignment(lerpDouble(.5, -.5, parallaxValue)!, 0),
        ),
      );
  BoxDecoration get _vignetteDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const RadialGradient(
          radius: 2,
          colors: [Colors.transparent, Colors.black],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        DecoratedBox(decoration: _parallaxUrlImageDecoration),
        DecoratedBox(decoration: _vignetteDecoration),
      ],
    );
  }
}
