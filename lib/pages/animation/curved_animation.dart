import 'package:flutter/material.dart';

class CurvedAnimationSample extends StatefulWidget {
  const CurvedAnimationSample({Key? key}) : super(key: key);

  @override
  State<CurvedAnimationSample> createState() => _CurvedAnimationSampleState();
}

class _CurvedAnimationSampleState extends State<CurvedAnimationSample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    // linear 匀速的
    // decelerate 匀减速
    // ease 开始加速，后面减速
    // easeIn 开始慢，后面快
    // easeOut 开始快，后面慢
    // easeInOut 开始慢，然后加速，最后再减速
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn)
      ..addStatusListener((status) {
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
    return AnimatedBox(
      key: UniqueKey(),
      animation: _animation,
    );
  }
}

class AnimatedBox extends AnimatedWidget {
  static final _opacity = Tween<double>(begin: 0.1, end: 1.0);
  static final _size = Tween<double>(begin: 0,end: 200);
  Animation<double> animation;

  AnimatedBox({required Key key, required this.animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("曲线动画"),
      ),
      body: Center(
        child: Opacity(
          opacity: _opacity.evaluate(animation),
          child:  SizedBox(
            width: _size.evaluate(animation),
            height: _size.evaluate(animation),
            // color: Colors.blue,
            child: const FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
