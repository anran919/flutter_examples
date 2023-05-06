import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({Key? key}) : super(key: key);

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("文字动画"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              _flag = !_flag;
            });
          }),
      body: Center(
          child: AnimatedDefaultTextStyle(
        style: TextStyle(
            fontSize: _flag ? 12 : 22,
            color: _flag ? Colors.blue : Colors.pink),
        duration: const Duration(milliseconds: 500),
        child: const Text('Hello world'),
      )),
    );
  }
}
