import 'package:flutter/material.dart';
import 'package:flutter_example/r.dart';


class MyListView2 extends StatelessWidget {
  const MyListView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('水平方向的listview'),
        ),
        body: Container(
          height: 150,
          decoration: const BoxDecoration(color: Colors.green),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(5),
            children: [
              Image.asset(
                R.assetsImagesA,
              ),
              Image.asset(
                R.assetsImagesA,
              ),
              Image.asset(
                R.assetsImagesA,
              ),
              Image.asset(
                R.assetsImagesA,
              ),
            ],
          ),
        ));
  }
}
