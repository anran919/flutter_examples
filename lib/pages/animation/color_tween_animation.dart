import 'package:flutter/material.dart';

class ColorTweenAnimation extends StatefulWidget {
  const ColorTweenAnimation({Key? key}) : super(key: key);

  @override
  State<ColorTweenAnimation> createState() => _ColorTweenAnimationState();
}

class _ColorTweenAnimationState extends State<ColorTweenAnimation>  with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 2));
    _animation = ColorTween(begin: Colors.blue,end: Colors.pink).animate(_controller)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("ColorTweenAnimation"),
      ),
      body:  Center(
        child:  AnimatedContainer(
          width: 300,
          height: 200,
          duration: const Duration(seconds: 1),
          color: _animation.value,
            child: const Center(
              child: Text(
                'Color Tween Animation',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
        ),
      ),
    );
  }
}
