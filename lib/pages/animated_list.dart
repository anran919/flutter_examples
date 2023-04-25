import 'package:flutter/material.dart';

class AnimatedListPage extends StatefulWidget {
  const AnimatedListPage({Key? key}) : super(key: key);

  @override
  State<AnimatedListPage> createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedListPage"),
      ),
      body: Center(
        child: Column(
            children: const [
            Text("AnimatedListPage"),
            Text("AnimatedListPage"),
            Text("AnimatedListPage"),
        ],
      ),
    ),);
  }
}
