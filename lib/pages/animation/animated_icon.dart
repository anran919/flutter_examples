import 'package:flutter/material.dart';

class AnimatedIconPage extends StatefulWidget {
  const AnimatedIconPage({Key? key}) : super(key: key);

  @override
  State<AnimatedIconPage> createState() => _AnimatedIconPageState();
}

class _AnimatedIconPageState extends State<AnimatedIconPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 1000));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedIconPage"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            _controller.repeat(reverse: true);
          }),
      body: Center(
        child:Column(
          children: [
            AnimatedIcon(
              icon: AnimatedIcons.close_menu,
              progress: _controller,
              size: 30,
              color: Colors.pink,
            ),
            AnimatedIcon(
              icon: AnimatedIcons.search_ellipsis,
              progress: _controller,
              size: 30,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
