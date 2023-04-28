import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexSample1 extends StatelessWidget {
  const FlexSample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlexSample1 搜索'),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        color: Colors.orange,
        padding:const EdgeInsets.all(10),
        height: 40,
        child: Flex(
          direction: Axis.horizontal,
          children:  [
            const Expanded(
              flex: 1,
              child: Text('输入搜索内容'),
            ),
            Container(
              width: 40,
              decoration: const BoxDecoration(
              ),
              child: const Icon(
                Icons.search,
                weight: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
