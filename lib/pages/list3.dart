import 'package:flutter/material.dart';

class MyListView3 extends StatelessWidget {
  const MyListView3({super.key});


  List<Widget> _initListData() {
    List<Widget> list = [];
    for (var i = 0; i < 10; i++) {
      list.add( ListTile(title: Text('列表$i')));
    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('动态生成列表'),
      ),
      body: ListView(
        children: _initListData(),
      ),
    );
  }

}