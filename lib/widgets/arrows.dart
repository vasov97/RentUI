import 'package:flutter/material.dart';

class Arrows extends StatefulWidget {
  const Arrows({super.key});

  @override
  State<Arrows> createState() => _ArrowsState();
}

class _ArrowsState extends State<Arrows> with TickerProviderStateMixin {
  late AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: const Duration(milliseconds: 1000));
    super.initState();
  }

  Gradient get gradient => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: const [Colors.white10, Colors.white, Colors.white10],
        stops: const [0.0, 0.3, 1],
        transform: _SlideGradientTransform(_controller!.value),
      );

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller!,
      builder: (_, child) => ShaderMask(
        shaderCallback: (bounds) => gradient.createShader(bounds),
        child: child,
      ),
      child: const Column(
        children: [
          Align(
              heightFactor: .4,
              child: Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
              )),
          Align(
              heightFactor: .4,
              child: Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
              )),
          Align(
              heightFactor: .4,
              child: Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class _SlideGradientTransform extends GradientTransform {
  const _SlideGradientTransform(this.percent);

  final double percent;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) =>
      Matrix4.translationValues(0, -(bounds.height * percent), 0);
}
