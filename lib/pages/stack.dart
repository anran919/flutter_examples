import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock View'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.greenAccent,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.cyan,
          ),
           const Text('层叠布局')
        ],
      ),
    );
  }
}
