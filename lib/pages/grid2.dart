import 'package:flutter/material.dart';

class GridView2 extends StatelessWidget {
  const GridView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView extent'),
      ),
      body: GridView.extent(
        //每个元素的最大长达
        maxCrossAxisExtent: 100,
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
          Icon(Icons.search_rounded)
        ],
      ),
    );
  }
}
