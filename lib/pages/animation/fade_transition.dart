import 'package:flutter/material.dart';

class FadeTransitionPage extends StatefulWidget {
  const FadeTransitionPage({Key? key}) : super(key: key);

  @override
  State<FadeTransitionPage> createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1000),
        lowerBound: 0.2,
        upperBound: 1);
    _controller.addListener(() {
      print('AnimationController : ${_controller.value}');
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeTransitionPage'),
      ),
      body: Center(
        child: Column(
          children: [
            FadeTransition(
              opacity: _controller,
              child: const FlutterLogo(
                size: 80,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _controller.stop();
                    },
                    child: const Text('停止')),
                ElevatedButton(
                    onPressed: () {
                      _controller.repeat();
                    },
                    child: const Text('重复')),
                ElevatedButton(
                    onPressed: () {
                      _controller.forward();
                    },
                    child: const Text('执行一次')),
                ElevatedButton(
                    onPressed: () {
                      _controller.reset();
                    },
                    child: const Text('重置')),
                ElevatedButton(
                    onPressed: () {
                      _controller.reverse();
                    },
                    child: const Text('翻转')),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.repeat();
        },
        child: const Icon(Icons.icecream),
      ),
    );
  }
}
