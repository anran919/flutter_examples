import 'package:flutter/material.dart';

class FlexSample extends StatelessWidget {
  const FlexSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flex sample'),
      ),
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
                height: 100,
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.pink,
                height: 100,
              ))
        ],
      ),
    );
  }
}
