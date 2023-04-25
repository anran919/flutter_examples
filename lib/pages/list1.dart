import 'package:flutter/material.dart';
import 'package:flutter_example/r.dart';

class MyListView1 extends StatelessWidget {
  const MyListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('列表1'),
        ),
        body: ListView(
          padding: EdgeInsets.all(5),
          children: [
            Image.asset(
              R.assetsImagesA,
            ),
            const SizedBox(
                child: Text(
              '这是标题',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            )),
            Image.asset(
              R.assetsImagesA,
            ),
            const SizedBox(
                child: Text(
              '这是标题',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            )),
          ],
        ));
  }
}
