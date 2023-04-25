import 'package:flutter/material.dart';
import 'package:flutter_example/data/news.dart';

class MyListView5 extends StatelessWidget {

  const MyListView5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView itemBuilder'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(items[index]['title']!),
                  subtitle: Text(items[index]['subTitle']!),
                ),
                const  Divider(),
              ],
            );
          }),
    );
  }
}
