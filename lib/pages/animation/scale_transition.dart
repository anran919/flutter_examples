import 'package:flutter/material.dart';

class ScaleTransitionPage extends StatefulWidget {
  const ScaleTransitionPage({Key? key}) : super(key: key);

  @override
  State<ScaleTransitionPage> createState() => _ScaleTransitionPageState();
}

class _ScaleTransitionPageState extends State<ScaleTransitionPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1000),
        );
    _controller.addListener(() {
      print('AnimationController : ${_controller.value}');
    });
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScaleTransitionPage'),
      ),
      body: Center(
        child: Column(
          children: [
            ScaleTransition(
              // scale: _controller,
              // 配置变化过程的第二种方式,另一种在_controller 构造函数中配置
              scale: _controller.drive(Tween(begin: 0.5,end: 1)),
              child: const FlutterLogo(
                size: 200,
              ),
            ),
            const SizedBox(
              height: 60,
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
