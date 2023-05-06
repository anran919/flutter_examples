import 'package:flutter/material.dart';

class AnimatedContainer2 extends StatefulWidget {
  const AnimatedContainer2({Key? key}) : super(key: key);

  @override
  State<AnimatedContainer2> createState() => _AnimatedContainer2State();
}

class _AnimatedContainer2State extends State<AnimatedContainer2> {
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer2"),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              // AnimatedPadding 动画
              AnimatedPadding(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  padding: EdgeInsets.all(_flag ? 10 : 50),
                  child: const ListTile(
                    title: Text("list"),
                  )),
            ],
          ),
          Positioned(
              child: AnimatedContainer(
            //动画过渡效果
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 200),
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height,
            transform: _flag
                ? Matrix4.translationValues(
                    -MediaQuery.of(context).size.width / 2.5, 0, 0)
                : Matrix4.translationValues(0, 0, 0),
            color: Colors.pink,
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _flag = !_flag;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
