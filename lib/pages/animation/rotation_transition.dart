import 'package:flutter/material.dart';

class RotationTransitionPage extends StatefulWidget {
  const RotationTransitionPage({Key? key}) : super(key: key);

  @override
  State<RotationTransitionPage> createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage>
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
        title: const Text('RotationTransition'),
      ),
      body: Center(

        child:  Column(
          children: [
            RotationTransition(
              turns: _controller,
              child: const FlutterLogo(
                size: 80,
              ),
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){_controller.stop();}, child: const Text('stop')),
                ElevatedButton(onPressed: (){_controller.repeat();}, child: const Text('repeat')),
                ElevatedButton(onPressed: (){_controller.forward();}, child: const Text('forward')),
                ElevatedButton(onPressed: (){_controller.reset();}, child: const Text('reset')),
                ElevatedButton(onPressed: (){_controller.reverse();}, child: const Text('reverse')),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 停止
          // _controller.stop();
          // 重复
          _controller.repeat();
          // 执行一次
          // _controller.forward();
          // 重置
          // _controller.reset();
          // 反转
          // _controller.reverse();
        },
        child: const Icon(Icons.icecream),
      ),
    );
  }
}
