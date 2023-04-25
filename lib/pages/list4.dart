import 'package:flutter/material.dart';
import 'package:flutter_example/data/news.dart';
import 'package:flutter_example/r.dart';

class MyListView4 extends StatelessWidget {
  const MyListView4({super.key});

  List<Widget> _initListData1() {
    List<Widget> list = [];
    for (int i = 0; i < items.length; i++) {
      list.add(ListTile(
        title: Text("${items[i]["title"]}"),
        subtitle: Text("${items[i]["subTitle"]}"),
        leading: Image.asset(R.assetsImagesA),
      ));
    }
    return list;
  }

  List<Widget> _initListData2() {
    var map = items.map((value) {
      return ListTile(
        title: Text("${value["title"]}"),
        subtitle: Text("${value["subTitle"]}"),
        leading: Image.asset(R.assetsImagesA),
      );
    });
    return map.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('动态数据列表'),
      ),
      body: ListView(
        // children: _initListData1(),
        children: _initListData2(),
      ),
    );
  }
}
