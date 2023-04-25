import 'package:flutter/material.dart';

class AspectRatioView extends StatelessWidget {
  const AspectRatioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AspectRatio'),),
      body: AspectRatio(
        //控制宽高比
        aspectRatio: 2/1,
        child: Container(
          color: Colors.yellow,
        ),
      ),
    );
  }
}
