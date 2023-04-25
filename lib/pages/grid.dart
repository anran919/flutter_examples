import 'package:flutter/material.dart';

class GridView1 extends StatelessWidget {
  const GridView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView基本使用-count'),
      ),
      body: GridView.count(
        //每行显示数量
        crossAxisCount: 4,
        children: const [
          Icon(Icons.add),
          Icon(Icons.settings),
          Icon(Icons.category),
          Icon(Icons.payment),
          Icon(Icons.home),
          Icon(Icons.search_rounded),
          Icon(Icons.add),
          Icon(Icons.settings),
          Icon(Icons.category),
          Icon(Icons.payment),
          Icon(Icons.home),
          Icon(Icons.search_rounded),
        ],
      ),
    );
  }
}
