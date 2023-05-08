import 'package:flutter/material.dart';

class SlideTransitionPage extends StatefulWidget {
  const SlideTransitionPage({Key? key}) : super(key: key);

  @override
  State<SlideTransitionPage> createState() => _SlideTransitionPageState();
}

class _SlideTransitionPageState extends State<SlideTransitionPage>
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
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SlideTransitionPage'),
      ),
      body: Center(
        child: Column(
          children: [
            SlideTransition(
              // position: _controller
              //     // Offset内的参数为移动的组件宽度的比例
              //     .drive(Tween(begin: const Offset(0, 0), end: const Offset(0.5, 0.5))),
              // 第二种写法
              position:
              // 配置动画参数
                  Tween(begin: const Offset(0, 0), end: const Offset(0,2))
                      //配置动画效果
                      .chain(CurveTween(curve: Curves.bounceInOut))
                      // 配置交错动画
                      .chain(CurveTween(curve: const Interval(0.4, 0.6))) // 当前时间点的百分之20运动到百分之80
                      .animate(_controller),
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
