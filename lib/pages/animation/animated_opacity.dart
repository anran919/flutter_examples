import 'package:flutter/material.dart';

class AnimatedOpacity1 extends StatefulWidget {
  const AnimatedOpacity1({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacity1> createState() => _AnimatedOpacity1State();
}
class _AnimatedOpacity1State extends State<AnimatedOpacity1> {
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedOpacity"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              _flag = !_flag;
            });
          }),
      body: Center(
          child: AnimatedOpacity(
            curve: Curves.easeInOut,
            opacity: _flag ? 1 : 0.2,
            duration: const Duration(milliseconds: 800),
            child: const FlutterLogo(size: 200,),
          )
      ),
    );
  }
}
