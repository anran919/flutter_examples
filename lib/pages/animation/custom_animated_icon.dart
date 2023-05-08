import 'package:flutter/material.dart';

class CustomAnimatedIconPage extends StatefulWidget {
  const CustomAnimatedIconPage({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedIconPage> createState() => _CustomAnimatedIconPageState();
}

class _CustomAnimatedIconPageState extends State<CustomAnimatedIconPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomAnimatedIconPage"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            _controller.forward();
            if (_controller.status == AnimationStatus.completed) {
              _controller.reverse();
            }
          }),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                ScaleTransition(
                  scale: _controller.drive(Tween(begin: 1, end: 0)),
                  child: const Icon(
                    Icons.search,
                    color: Colors.pink,
                  ),
                ),
                ScaleTransition(
                  scale: _controller.drive(Tween(begin: 0, end: 1)),
                  child: const Icon(
                    Icons.close,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            Stack(
              children: [
                ScaleTransition(
                  scale: _controller.drive(Tween(begin: 1.0, end: 0.0)
                      // 增加过渡效果
                      .chain(CurveTween(curve: const Interval(0, 0.5)))),
                  child: const Icon(
                    Icons.close,
                    color: Colors.blue,
                  ),
                ),
                ScaleTransition(
                  scale: _controller.drive(Tween(begin: 0.0, end: 1.0)
                  // 增加过渡效果
                      .chain(CurveTween(curve: const Interval(0.5, 1)))),
                  child: const Icon(
                    Icons.search_off,
                    color: Colors.pink,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
