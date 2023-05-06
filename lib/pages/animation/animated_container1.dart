import 'package:flutter/material.dart';

class AnimatedContainer1 extends StatefulWidget {
  const AnimatedContainer1({Key? key}) : super(key: key);

  @override
  State<AnimatedContainer1> createState() => _AnimatedContainer1State();
}
class _AnimatedContainer1State extends State<AnimatedContainer1> {
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              _flag = !_flag;
            });
          }),
      body: Center(
          child: AnimatedContainer(
        // 移动
        transform: _flag
            ? Matrix4.translationValues(0, 0, 0)
            : Matrix4.translationValues(100, 0, 0),
        width: _flag ? 200 : 300,
        height: _flag ? 200 : 300,
        color: _flag ? Colors.blue : Colors.pink,
        duration: const Duration(milliseconds: 500),
      )),
    );
  }
}
