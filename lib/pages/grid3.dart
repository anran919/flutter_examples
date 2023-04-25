import 'package:flutter/material.dart';

class GridView3 extends StatelessWidget {
  const GridView3({Key? key}) : super(key: key);

  List<Widget> _initList() {
    List<Widget> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: Text(
          "这是${i + 1}条数据",
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView 示例'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.2, // item 的宽高比
        children: _initList(),
      ),
    );
  }
}
