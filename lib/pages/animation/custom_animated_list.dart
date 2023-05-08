import 'package:flutter/material.dart';

class CustomAnimatedListPage extends StatefulWidget {
  const CustomAnimatedListPage({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedListPage> createState() => _CustomAnimatedListPageState();
}

class _CustomAnimatedListPageState extends State<CustomAnimatedListPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomAnimatedListPage"),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideTransition(
              position: _controller.drive(
                  Tween(begin: const Offset(0, 0), end: const Offset(0.2, 0))
                      .chain(CurveTween(curve: const Interval(0, 0.2)))),
              child: Container(
                height: 70,
                width: 200,
                color: Colors.blue[200],
              ),
            ),
            SlideTransition(
              position: _controller.drive(
                  Tween(begin: const Offset(0, 0), end: const Offset(0.1, 0))
                      .chain(CurveTween(curve: const Interval(0.2, 0.4)))),
              child: Container(
                height: 70,
                width: 200,
                color: Colors.blue[300],
              ),
            ),
            SlideTransition(
              position: _controller.drive(
                  Tween(begin: const Offset(0, 0), end: const Offset(-0.1, 0))
                      .chain(CurveTween(curve: const Interval(0.4, 0.6)))),
              child: Container(
                height: 70,
                width: 200,
                color: Colors.blue[400],
              ),
            ),
            SlideTransition(
              position: _controller.drive(
                  Tween(begin: const Offset(0, 0), end: const Offset(-0.2, 0))
                      .chain(CurveTween(curve: const Interval(0.6, 0.8)))),
              child: Container(
                height: 70,
                width: 200,
                color: Colors.blue[500],
              ),
            ),
            SlideTransition(
              position: _controller.drive(
                  Tween(begin: const Offset(0, 0), end: const Offset(-0.3, 0))
                      .chain(CurveTween(curve: const Interval(0.8, 1)))),
              child: Container(
                height: 70,
                width: 200,
                color: Colors.blue[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
